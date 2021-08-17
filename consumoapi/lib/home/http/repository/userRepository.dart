import 'dart:convert';

import 'package:consumoapi/model/userModel.dart';
import 'package:consumoapi/repository/interfaceUserRepository.dart';
//http é um apelido pra saber do qual pacote está vindo
//sem ele fica ex: get, post, put, delete agora com o apelido, ficaria http.get etc
import 'package:http/http.dart' as http;


//Responsavel por fazer acesso ao serviço
class UserHttpRepository implements InterfaceUserRepository {
  @override
  Future<List<UserModel>> findAllUsers() async {
    final response = await http.get(Uri.parse('https://5f7cba02834b5c0016b058aa.mockapi.io/api/users'));
    //retorna como string ai converte a string em map para o dart ler
    final List<dynamic> responseMap = json.decode(response.body);
    //transforma em uma lista de userModels
    return responseMap.map((resp) => UserModel.fromMap(resp)) .toList();
  }

}