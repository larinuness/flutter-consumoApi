import 'package:consumoapi/home/http/httpController.dart';
import 'package:consumoapi/home/http/repository/userRepository.dart';
import 'package:consumoapi/repository/interfaceUserRepository.dart';
import 'package:get/get.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<InterfaceUserRepository>(UserHttpRepository());
    Get.put(HttpController(Get.find()));
  }

}