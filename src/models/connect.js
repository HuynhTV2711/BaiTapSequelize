import { Sequelize } from "sequelize";

const sequelize = new Sequelize("app_food1", "root", "1234",{
    host: "localhost",
    port: 3307,
    dialect: "mysql"
})


export default sequelize