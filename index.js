import express from "express";
import rootRoute from "./src/routes/rootRoute.js";

const app = express();

const port = 8081;
app.use(express.json());
app.use(express.static("."));
app.use(rootRoute)

app.listen(port, ()=>{
    console.log("connect ", port);
});

