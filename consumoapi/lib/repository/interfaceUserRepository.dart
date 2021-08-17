import 'package:consumoapi/model/userModel.dart';

abstract class InterfaceUserRepository {
  //usermodel é o modelo/entidade que vai ser a representação do json
  Future<List<UserModel>> findAllUsers();
}

