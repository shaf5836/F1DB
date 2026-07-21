-- ============================================================
-- SHOP — merchandise and tickets
-- ============================================================

-- ----- MERCHANDISE (8 items) -----
INSERT INTO Shop_item (item_name, item_type, description, price, image_url, stock) VALUES
('F1 Official Cap',         'merch', 'Embroidered F1 logo cap, one size fits all.',                    29.99,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/cap_kziggv.jpg',                  150),
('Red Bull Racing T-Shirt', 'merch', 'Official team t-shirt, 100%% cotton.',                            49.99,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/rbr-tshirt_q1zy8v.jpg',          100),
('Ferrari Hoodie',          'merch', 'Scuderia Ferrari pullover hoodie in classic red.',                89.99,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/ferrari-hoodie_scleah.jpg',       75),
('Mercedes AMG Jacket',     'merch', 'Lightweight team jacket with embroidered logo.',                 119.99,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/mercedes-jacket_vddt8q.jpg',      50),
('McLaren Mug',             'merch', 'Ceramic mug featuring the McLaren papaya colour.',                14.99,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/mclaren-mug_nwbdgm.jpg',         200),
('F1 Keychain',             'merch', 'Metal keychain with race car silhouette.',                         9.99,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/keychain_amooeg.jpg',            300),
('Lewis Hamilton Poster',   'merch', '24x36 inch glossy poster of the 7-time champion.',                19.99,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/hamilton-poster_qv01uj.jpg',     120),
('F1 Scale Model Car 1:43', 'merch', 'Detailed die-cast model of a current season F1 car.',             59.99,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/model-car_cbgogo.jpg',            60);

-- ----- TICKETS (5 items) — references Meeting table -----
-- meeting_key 1 = Bahrain, 8 = Monaco, 10 = Spain
INSERT INTO Shop_item (item_name, item_type, description, price, image_url, stock, meeting_key) VALUES
('Monaco GP — General Admission',  'ticket', 'Standing access for the entire Monaco GP weekend.',          150.00,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/ticket-monaco-ga_wuczua.jpg',         500, 8),
('Monaco GP — Grandstand',         'ticket', 'Reserved seat overlooking the harbour chicane.',              350.00,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/ticket-monaco-grandstand_is9lc3.jpg', 200, 8),
('Monaco GP — VIP Paddock Pass',   'ticket', 'Premium hospitality with paddock access and food.',          1200.00,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/ticket-monaco-vip_lnpvty.jpg',         50, 8),
('Bahrain GP — Weekend GA',        'ticket', 'Three-day general admission at the season opener.',           200.00,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/ticket-silverstone_k6b5yk.jpg',       400, 1),
('Spanish GP — Grandstand',        'ticket', 'Grandstand seat for the Spanish Grand Prix at Catalunya.',    275.00,  'https://res.cloudinary.com/dzsrp9nt5/image/upload/w_400,h_400,c_fill,q_auto,f_auto/ticket-monza_huikjm.jpg',             250, 10);