class TaskEntity {
  String msg;
  int code;
  List<TaskData> data;

  TaskEntity({this.msg, this.code, this.data});

  TaskEntity.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    code = json['code'];
    if (json['data'] != null) {
      data = new List<TaskData>();
      (json['data'] as List).forEach((v) {
        data.add(new TaskData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TaskData {
  String articleType;
  String createUserName;
  String createdAt;
  String publishColumn;

//	TaskDataCreateUser createUser;
  String title;
  String publishColumnName;

  TaskData(
      {this.articleType,
      this.createUserName,
      this.createdAt,
      this.publishColumn,
      /* this.createUser, */ this.title,
      this.publishColumnName});

  TaskData.fromJson(Map<String, String> json) {
    articleType = json['article_type'];
    createUserName = json['create_user_name'];
    createdAt = json['created_at'];
    publishColumn = json['publish_column'];
//		createUser = json['create_user'] != null ? new TaskDataCreateUser.fromJson(json['create_user']) : null;
    title = json['title'];
    publishColumnName = json['publish_column_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['article_type'] = this.articleType;
    data['create_user_name'] = this.createUserName;
    data['created_at'] = this.createdAt;
    data['publish_column'] = this.publishColumn;
//		if (this.createUser != null) {
//      data['create_user'] = this.createUser.toJson();
//    }
    data['title'] = this.title;
    data['publish_column_name'] = this.publishColumnName;
    return data;
  }
}

class TaskDataCreateUser {
  String salt;
  String resetPwdAt;
  String lastLoginTime;
  String commonCategories;
  String createdAt;
  String expireTime;
  String commonColumns;
  String avatar;
  String extend;
  String updatedAt;
  String phone;
  String lastLoginIp;
  String name;
  int siteId;
  String username;

  TaskDataCreateUser(
      {this.salt,
      this.resetPwdAt,
      this.lastLoginTime,
      this.commonCategories,
      this.createdAt,
      this.expireTime,
      this.commonColumns,
      this.avatar,
      this.extend,
      this.updatedAt,
      this.phone,
      this.lastLoginIp,
      this.name,
      this.siteId,
      this.username});

  TaskDataCreateUser.fromJson(Map<String, dynamic> json) {
    salt = json['salt'];
    resetPwdAt = json['reset_pwd_at'];
    lastLoginTime = json['last_login_time'];
    commonCategories = json['common_categories'];
    createdAt = json['created_at'];
    expireTime = json['expire_time'];
    commonColumns = json['common_columns'];
    avatar = json['avatar'];
    extend = json['extend'];
    updatedAt = json['updated_at'];
    phone = json['phone'];
    lastLoginIp = json['last_login_ip'];
    name = json['name'];
    siteId = json['site_id'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['salt'] = this.salt;
    data['reset_pwd_at'] = this.resetPwdAt;
    data['last_login_time'] = this.lastLoginTime;
    data['common_categories'] = this.commonCategories;
    data['created_at'] = this.createdAt;
    data['expire_time'] = this.expireTime;
    data['common_columns'] = this.commonColumns;
    data['avatar'] = this.avatar;
    data['extend'] = this.extend;
    data['updated_at'] = this.updatedAt;
    data['phone'] = this.phone;
    data['last_login_ip'] = this.lastLoginIp;
    data['name'] = this.name;
    data['site_id'] = this.siteId;
    data['username'] = this.username;
    return data;
  }
}
