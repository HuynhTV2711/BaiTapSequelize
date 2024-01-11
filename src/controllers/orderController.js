import sequelize from "../models/connect.js";
import initModels from "../models/init-models.js";

const connect = initModels(sequelize);

 const order = async (req, res)=>{
    let {userId} = req.params;
    try {
        let {
            user_id,
            food_id,
            amount,
            code,
            arr_sub_id,
          } = req.body;

          let newData ={
            user_id: userId,
            food_id,
            amount,
            code,
            arr_sub_id,
          }

          await connect.orders.create(newData);
          res.send("Thêm thành công");
    } catch (error) {
        res.send("Lỗi")
    }
  }

export{
    order
}