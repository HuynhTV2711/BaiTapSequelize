# BaiTapSequelize
1 số API cho Giảng viên chấm bài


1. API lấy danh sách like theo nhà hàng
GET
http://localhost:8081/like/get-like-by-res
2. API lấy danh sách like theo user
GET
http://localhost:8081/like/get-like-by-user
3. API like
POST
http://localhost:8081/like/create-like/:resId/:userId
http://localhost:8081/like/create-like/1/3
{
    "date_like": "2024-01-01"
}
4. API unlike
DELETE
http://localhost:8081/like/un-like/:likeResId
http://localhost:8081/like/un-like/9
5. API Lấy danh sách đánh gái theo nhà hàng
GET
http://localhost:8081/rate/get-rate-by-res
6. API lấy danh sách đánh giá theo user
GET
http://localhost:8081/rate/get-rate-by-user
7. API Thêm đánh giá
POST
http://localhost:8081/rate/create-rate/:resId/:userId
http://localhost:8081/rate/create-rate/1/3
{
    "amount":100,
    "date_rate":"2024-10-10"
}
8. Order
POST
http://localhost:8081/order/create-order/:userId
http://localhost:8081/order/create-order/5
{
    "food_id": 1,
    "amount": 100,
    "code" : "ORD1234",
    "arr_sub_id": "SUB1231"
}