import 'package:consumoapi/model/userModel.dart';
import 'package:consumoapi/repository/interfaceUserRepository.dart';
import 'package:dio/dio.dart';

class UserRepostioryDio implements InterfaceUserRepository {

  final Dio _dio;

  UserRepostioryDio(this._dio);

  @override
  Future<List<UserModel>> findAllUsers() async {

    try {
    final response = await _dio.get<List>('https://5f7cba02834b5c0016b058aa.mockapi.io/api/users');
    return response.data!.map((e) => UserModel.fromMap(e)).toList();
  } on Exception catch(e) {
      print(e);
      rethrow;

    }

  }

}