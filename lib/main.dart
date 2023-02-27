import 'package:cripto/configs/app_settings.dart';
import 'package:cripto/configs/hive_config.dart';
import 'package:cripto/repositories/conta_repository.dart';
import 'package:cripto/repositories/favoritas_repository.dart';
import 'package:cripto/repositories/moeda_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'meu_aplicativo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveConfig.start();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ContaRepository()),
        ChangeNotifierProvider(create: (context) => AppSettings()),
        ChangeNotifierProvider(create: (context) => FavoritasRepository()),
      ],
      child: MeuAplicativo(),
    ),
  );
}
