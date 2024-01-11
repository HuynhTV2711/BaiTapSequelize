import sequelize from "../models/connect.js";
import initModels from "../models/init-models.js";

const connect = initModels(sequelize);


const getRateByRestaurant = async (req, res) => {
  try {
    let data = await connect.restaurant.findAll(
      {include: ["rate_res"],}
    )
    res.send(data);
  } catch (error) {
    res.send(error);
  }
};
  const getRateByUser = async (req, res) => {
    try {
      let data = await connect.users.findAll({
        include: ["rate_res"],
      })
      res.send(data);
    } catch (error) {
      res.send(error);
    }
  };


  const rate = async (req, res)=>{
    let {resId, userId} = req.params;
    try {
        let {
            amount,
            date_rate
          } = req.body;

          let newData ={
            user_id: userId,
            res_id: resId,
            amount,
            date_rate
          }

          await connect.rate_res.create(newData);
          res.send("Thêm thành công");
    } catch (error) {
        res.send("Lỗi")
    }
  }

export{
    getRateByRestaurant, rate, getRateByUser
}