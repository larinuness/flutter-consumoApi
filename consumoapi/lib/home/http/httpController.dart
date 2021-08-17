import 'package:consumoapi/repository/interfaceUserRepository.dart';
import 'package:get/get.dart';


//StateMixin Já vem a estrutura com erro, loading e busca
//Controller tem ciclo de vida
class HttpController extends GetxController with StateMixin{
  final InterfaceUserRepository _httpRepository;

  HttpController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  //função de buscar
  void findUsers()async {
    //altera o estado e notifica a tela/view
    change([], status: RxStatus.loading());
    try {
      final dados = await _httpRepository.findAllUsers();
      //sucesso
      change(dados, status: RxStatus.success());
    } catch (e) {
      //erro
      change([], status: RxStatus.error('Erro ao buscar usuários'));
    }
  }
}
