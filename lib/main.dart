import 'package:flutter/material.dart';
import 'package:kscv_portfolio/core/theme/app.theme.dart';
import 'package:kscv_portfolio/presentation/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KSCV Portfolio',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      home: const Home(),
    );
  }
}
