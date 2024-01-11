import express from "express";
import likeRoute from "./likeRoute.js";
import rateRes from "./rateRoute.js";
import orderRoute from "./orderRoute.js";


const rootRoute = express.Router();
rootRoute.use("/like", likeRoute);
rootRoute.use("/rate", rateRes);
rootRoute.use("/order", orderRoute);

export default rootRoute;