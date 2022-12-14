class ResponseDart {
ResponseDart({
  required this.code,
  required this.msg,
  required this.data,
});
late final int code;
late final String msg;
late final Data data;

ResponseDart.fromJson(Map<dynamic, dynamic> json){
code = json['code'];
msg = json['msg'];
data = Data.fromJson(json['data']);
}

Map<dynamic, dynamic> toJson() {
  final _data = <String, dynamic>{};
  _data['code'] = code;
  _data['msg'] = msg;
  _data['data'] = data.toJson();
  return _data;
}
}

class Data {
  Data({
    required this.id,
    required this.mobile,
    required this.password,
    required this.nickname,
    required this.roles,
    required this.avatar,
    required this.createTime,
    required this.updateTime,
    required this.token,
    required this.bonus,
  });
  late final int id;
  late final String mobile;
  late final String password;
  late final String nickname;
  late final String roles;
  late final String avatar;
  late final String createTime;
  late final String updateTime;
  late final String token;
  late final int bonus;

  Data.fromJson(Map<dynamic, dynamic> json){
    id = json['id'];
    mobile = json['mobile'];
    password = json['password'];
    nickname = json['nickname'];
    roles = json['roles'];
    avatar = json['avatar'];
    createTime = json['createTime'];
    updateTime = json['updateTime'];
    bonus = json['bonus'];
    token = json['token'];
  }

  Map<dynamic, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['mobile'] = mobile;
    _data['password'] = password;
    _data['nickname'] = nickname;
    _data['roles'] = roles;
    _data['avatar'] = avatar;
    _data['createTime'] = createTime;
    _data['updateTime'] = updateTime;
    _data['bonus'] = bonus;
    _data['token'] = token;
    return _data;
  }
}

