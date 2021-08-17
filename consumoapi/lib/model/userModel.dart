import 'dart:convert';

import 'package:consumoapi/model/userTypes.dart';

class UserModel {

  String? id;
  String? name;
  String? usernames;
  List<UserType> types;

  UserModel({
    this.id,
    this.name,
    this.usernames,
    required this.types,
  });


  //vai tranformar em um mapa de chave/valor
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'usernames': usernames,
      'user_types': types.map((x) => x.toMap()).toList(),
    };
  }

  //construtor factory é diferente porque popular e retornar valor, ja o construtor padrão apenas popula
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      name: map['name'],
      usernames: map['usernames'],
      types: List<UserType>.from(map['user_types']?.map((x) => UserType.fromMap(x)) ?? const []),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));
}