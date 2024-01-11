import express from "express";
import { order } from "../controllers/orderController.js";


const orderRoute = express.Router();

orderRoute.post("/create-order/:userId", order );

export default orderRoute;