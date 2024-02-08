import 'package:ex_app/service/user_service.dart';
import 'package:get_it/get_it.dart';

class ServiceLocator {
  static void setup() {
    GetIt.I.registerSingleton<IUserService>(UserService());
  }
}
