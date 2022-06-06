import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:mone_task/app.dart';
import 'package:mone_task/storage/storage.dart';
import 'package:mone_task/store/store.dart';

Future<void> run() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  registerSingletons();

  await GetIt.I<Storage>().init();

  runApp(const MOneApp());
}

Future<void> main() async {
  await run();
}
