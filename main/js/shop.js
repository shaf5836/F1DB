
let allItems = [];         
let currentFilter = "all";  


const cart = new Map();


const CART_KEY = "f1hub_cart";

function saveCart() {
 
  const arr = Array.from(cart.values());
  localStorage.setItem(CART_KEY, JSON.stringify(arr));
}

function loadCart() {
  const raw = localStorage.getItem(CART_KEY);
  if (!raw) return;
  try {
    const arr = JSON.parse(raw);
    for (const line of arr) {
      cart.set(line.item_id, line);
    }
  } catch (err) {
    
    console.warn("Bad cart in localStorage, resetting.");
    localStorage.removeItem(CART_KEY);
  }
}


function fetchItems() {

  return $.get("/api/shop/items").then((res) => {
    if (!res.success) throw new Error(res.message || "Failed to load items");
    return res.data;
  });
}

function postCheckout(cartArray) {
  return $.ajax({
    url: "/api/shop/checkout",
    method: "POST",
    contentType: "application/json",
    data: JSON.stringify({ cart: cartArray }),
  }).then((res) => {
    if (!res.success) throw new Error(res.message || "Checkout failed");
    return res.data;
  });
}


function renderGrid() {
  const $grid = $("#shopGrid");


  const visible =
    currentFilter === "all"
      ? allItems
      : allItems.filter((it) => it.item_type === currentFilter);

  if (visible.length === 0) {
    $grid.html(
      `<div class="state-empty" style="grid-column: 1 / -1">
         <p>No items found.</p>
       </div>`,
    );
    return;
  }

  
  const html = visible
    .map((item) => {
   
      const ticketInfo =
        item.item_type === "ticket" && item.meeting_name
          ? `<div class="muted" style="font-size:0.75rem">
               🏁 ${item.meeting_name}
             </div>`
          : "";

      const badge =
        item.item_type === "ticket"
          ? `<span class="badge badge-gold">TICKET</span>`
          : `<span class="badge badge-muted">MERCH</span>`;

      return `
        <div class="product-card">
          <img class="product-img" src="${item.image_url || ""}" alt="${item.item_name}" />
          <div class="product-body">
            <div style="display:flex;justify-content:space-between;align-items:flex-start;gap:8px">
              <span class="product-name">${item.item_name}</span>
              ${badge}
            </div>
            <div class="product-meta">${item.description || ""}</div>
            ${ticketInfo}
            <div style="display:flex;justify-content:space-between;align-items:center;margin-top:8px">
              <span class="product-price">$${Number(item.price).toFixed(2)}</span>
              <button class="btn btn-primary add-to-cart-btn" data-id="${item.item_id}">
                Add
              </button>
            </div>
          </div>
        </div>
      `;
    })
    .join("");

  $grid.html(html);
}


function renderCart() {
  const $body = $("#cartBody");
  const $count = $("#cartCount");
  const $total = $("#cartTotal");

 
  let totalQty = 0;
  let totalPrice = 0;
  for (const line of cart.values()) {
    totalQty += line.quantity;
    totalPrice += Number(line.price) * line.quantity;
  }
  $count.text(totalQty);
  $total.text("$" + totalPrice.toFixed(2));

  if (cart.size === 0) {
    $body.html(`<p class="muted">Your cart is empty.</p>`);
    return;
  }


  const html = Array.from(cart.values())
    .map(
      (line) => `
        <div class="cart-line">
          <img src="${line.image_url || ""}" alt="${line.item_name}" />
          <div class="cart-line-info">
            <div class="cart-line-name">${line.item_name}</div>
            <div class="muted">$${Number(line.price).toFixed(2)}</div>
            <div class="cart-qty">
              <button class="qty-btn" data-id="${line.item_id}" data-action="dec">−</button>
              <span>${line.quantity}</span>
              <button class="qty-btn" data-id="${line.item_id}" data-action="inc">+</button>
              <button class="qty-btn" data-id="${line.item_id}" data-action="remove" style="margin-left:auto;color:var(--red)">✕</button>
            </div>
          </div>
        </div>
      `,
    )
    .join("");

  $body.html(html);
}


function addToCart(itemId) {
  const item = allItems.find((it) => it.item_id === itemId);
  if (!item) return;

  if (cart.has(itemId)) {
    const line = cart.get(itemId);
    line.quantity += 1;
  } else {
    cart.set(itemId, {
      item_id: item.item_id,
      item_name: item.item_name,
      price: item.price,
      image_url: item.image_url,
      quantity: 1,
    });
  }

  saveCart();
  renderCart();
  showAlert(`${item.item_name} added to cart`);
}

function changeQty(itemId, action) {
  if (!cart.has(itemId)) return;

  if (action === "remove") {
    cart.delete(itemId);
  } else if (action === "inc") {
    cart.get(itemId).quantity += 1;
  } else if (action === "dec") {
    const line = cart.get(itemId);
    line.quantity -= 1;
    if (line.quantity < 1) cart.delete(itemId);
  }

  saveCart();
  renderCart();
}


function doCheckout() {
  if (cart.size === 0) {
    showAlert("Your cart is empty");
    return;
  }


  const cartArray = Array.from(cart.values()).map((line) => ({
    item_id: line.item_id,
    quantity: line.quantity,
  }));

  postCheckout(cartArray)
    .then((data) => {
     
      cart.clear();
      saveCart();
      renderCart();
      $("#cartSidebar").removeClass("open");

      $("#successMessage").text(
        `Order #${data.order_id} placed. Total: $${data.total}`,
      );
      $("#successModal").addClass("show");
    })
    .catch((err) => {
     
      if (err.status === 401 || err.statusCode === 401) {
        showAlert("Please log in to checkout");
        window.location.href = "/login";
        return;
      }
      const msg =
        err.responseJSON?.message || err.message || "Checkout failed";
      showAlert(msg);
    });
}


function showAlert(text) {
  const $alert = $("#alert").text(text).addClass("show");
  setTimeout(() => $alert.removeClass("show"), 2200);
}

$(function () {
  loadCart();
  renderCart();


  fetchItems()
    .then((items) => {
      allItems = items;
      renderGrid();
    })
    .catch((err) => {
      $("#shopGrid").html(
        `<div class="state-error" style="grid-column: 1 / -1">
           Failed to load items: ${err.message}
         </div>`,
      );
    });

  
  $("#shopTabs").on("click", ".tab-btn", function () {
    $("#shopTabs .tab-btn").removeClass("active");
    $(this).addClass("active");
    currentFilter = $(this).data("type");
    renderGrid();
  });

 
  $("#shopGrid").on("click", ".add-to-cart-btn", function () {
    const id = parseInt($(this).data("id"), 10);
    addToCart(id);
  });

  
  $("#cartToggle").on("click", () => $("#cartSidebar").addClass("open"));
  $("#cartClose").on("click", () => $("#cartSidebar").removeClass("open"));


  $("#cartBody").on("click", ".qty-btn", function () {
    const id = parseInt($(this).data("id"), 10);
    const action = $(this).data("action");
    changeQty(id, action);
  });

 
  $("#checkoutBtn").on("click", doCheckout);

 
  $("#successClose").on("click", () =>
    $("#successModal").removeClass("show"),
  );
});
