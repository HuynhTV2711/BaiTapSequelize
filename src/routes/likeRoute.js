import express from "express";
import { getLikeByRestaurant, getLikeByUser, like, unLike } from "../controllers/likeController.js";


const likeRoute = express.Router();

likeRoute.get("/get-like-by-res", getLikeByRestaurant);
likeRoute.get("/get-like-by-user", getLikeByUser);
likeRoute.post("/create-like", like);
likeRoute.delete("/un-like/:likeResId", unLike);

export default likeRoute;