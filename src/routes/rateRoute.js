import express from "express";
import { getRateByRestaurant, getRateByUser, rate } from "../controllers/rateController.js";


const rateRes = express.Router();

rateRes.get("/get-rate-by-res", getRateByRestaurant);
rateRes.get("/get-rate-by-user", getRateByUser);
rateRes.post("/create-rate/:resId/:userId", rate);

export default rateRes;