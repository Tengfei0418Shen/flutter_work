
import 'dart:convert';

String data = """
{
  "id":10,
  "name":"张三",
  "score":95,
  "teachers":[
    {
      "name":"李四",
      "age":25
    },
     {
      "name":"王五",
      "age":35
    }
  ]
}
""";


class Student {
  int? _id;
  String? _name;
  int? _score;
  List<Teachers>? _teachers;

  Student({int? id, String? name, int? score, List<Teachers>? teachers}) {
    if (id != null) {
      this._id = id;
    }
    if (name != null) {
      this._name = name;
    }
    if (score != null) {
      this._score = score;
    }
    if (teachers != null) {
      this._teachers = teachers;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get name => _name;
  set name(String? name) => _name = name;
  int? get score => _score;
  set score(int? score) => _score = score;
  List<Teachers>? get teachers => _teachers;
  set teachers(List<Teachers>? teachers) => _teachers = teachers;

  Student.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _score = json['score'];
    if (json['teachers'] != null) {
      _teachers = <Teachers>[];
      json['teachers'].forEach((v) {
        _teachers!.add(new Teachers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['score'] = this._score;
    if (this._teachers != null) {
      data['teachers'] = this._teachers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Teachers {
  String? _name;
  int? _age;

  Teachers({String? name, int? age}) {
    if (name != null) {
      this._name = name;
    }
    if (age != null) {
      this._age = age;
    }
  }

  String? get name => _name;
  set name(String? name) => _name = name;
  int? get age => _age;
  set age(int? age) => _age = age;

  Teachers.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['age'] = this._age;
    return data;
  }
}


main(){
  final jsonRes = json.decode(data);
  Student stu = Student.fromJson(jsonRes);
print(stu.id);
print(stu.teachers![1]._name);

}