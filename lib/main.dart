import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tecnica/screens/homePage.dart';
import 'package:prueba_tecnica/providers/tabProvider.dart';
import 'package:prueba_tecnica/theme/theme.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => TabProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: const Home(),
    );
  }
}
