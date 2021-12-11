import 'package:flutter/material.dart';
import 'package:flutter_codigo4_whatsapp/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // quita el banner rojo en la esquina superior derecha
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0xff0075E55),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xff024C35C),
        )
      ),
      home: HomePage(),
    );
  }
}

