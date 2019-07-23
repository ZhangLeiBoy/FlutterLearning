//查询接口：GET请求--------------------------------------------
//----查询所有：
//http://www.toly1994.com:8089/api/android/note
//----查询偏移12条，查询12条(即12条为一页的第2页)：
//http://www.toly1994.com:8089/api/android/note/12/12
//----按区域查询(A为Android数据，SB为SpringBoot数据，Re为React数据)
//http://www.toly1994.com:8089/api/android/note/area/A
//http://www.toly1994.com:8089/api/android/note/area/A/12/12
//----按部分名称查询
//http://www.toly1994.com:8089/api/android/note/name/材料
//http://www.toly1994.com:8089/api/android/note/name/材料/2/2
//----按类型名称查询(类型定义表见第一篇)
//http://www.toly1994.com:8089/api/android/note/name/ABCS
//http://www.toly1994.com:8089/api/android/note/name/ABCS/2/2
//----按id名称查
//http://www.toly1994.com:8089/api/android/note/12
//
//添改删接口---------------------------------------------------------------
//添-POST请求：http://www.toly1994.com:8089/api/android/note
//更新-PUT请求：http://www.toly1994.com:8089/api/android/note/1
//删-DELETE请求：http://www.toly1994.com:8089/api/android/note/1


//http://mxuapi-team.cloud.hoge.cn/api/zixun/column
//http://mxuapi-team.cloud.hoge.cn/api/zixun/list?column_id=64