import sequelize from "../models/connect.js";
import initModels from "../models/init-models.js";

const connect = initModels(sequelize);


const getLikeByRestaurant = async (req, res) => {
  try {
    let data = await connect.restaurant.findAll(
      {include: ["like_res"],}
    )
    res.send(data);
  } catch (error) {
    res.send(error);
  }
};
  const getLikeByUser = async (req, res) => {
    try {
      let data = await connect.users.findAll({
        include: ["like_res"],
      })
      res.send(data);
    } catch (error) {
      res.send(error);
    }
  };


  const like = async (req, res)=>{
    try {
        let {
            user_id,
            res_id,
            date_like
          } = req.body;

          let newData ={
            user_id,
            res_id,
            date_like
          }

          await connect.like_res.create(newData);
          res.send("Thêm thành công");
    } catch (error) {
        res.send("Lỗi")
    }
  }

  const unLike = async (req, res) => {
    try {
      let { likeResId } = req.params;
      await connect.like_res.destroy({
        where: {
          like_res_id: likeResId,
        },
      });
      res.send("Xóa thành công");
    } catch (error) {
      res.send(error);
    }
  };
  
export{
    getLikeByRestaurant, like, getLikeByUser,unLike
}