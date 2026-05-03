
// MiddleWare Signature
const requireAuth = (req, res, next) => {

    // Authentication Check : Checking session before reaching the router handler
    if (!req.session || !req.session.user_name) {

        // Early Return 
        return res.status(401).json({
            success: false,
            message: 'Login required to access this resource'
        });
    }
    // User is authenticated - Proceeding to route handler
    next();
};

export default requireAuth;