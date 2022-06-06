import 'package:get_it/get_it.dart';
import 'package:mone_task/storage/storage.dart';
import 'package:mone_task/store/auth_state/auth_state.dart';

void registerSingletons() {
  GetIt.I.registerSingleton(Storage());
  GetIt.I.registerSingleton(AuthState());
}

void unRegisterSingletons() {
  GetIt.I.unregister(instance: GetIt.I<Storage>());
  GetIt.I.unregister(instance: GetIt.I<AuthState>());
}
