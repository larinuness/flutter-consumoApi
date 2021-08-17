import 'package:consumoapi/repository/interfaceUserRepository.dart';
import 'package:get/get.dart';

class DioController extends GetxController with StateMixin {

  final InterfaceUserRepository _dioRepository;

  DioController(this._dioRepository);

  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  //estrutura de busca
  void findUsers()async {
    //método de stateMixin, falo quando quero alterar o estado, notifica a minha tela que precisa ser alterada
    change([], status: RxStatus.loading());
    try {
      final dados = await _dioRepository.findAllUsers();
      //o change nesse caso de sucesso já vai ter a lista populada
      change(dados, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Erro ao buscar usuários'));
    }
  }
}