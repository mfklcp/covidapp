import 'package:flutter/material.dart';
import 'View/AtualizacaoDados.dart';
import 'View/TelaPrincipal.dart';

void main() => runApp(CovidApp());

class CovidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Gotham-regular'),
      home: Scaffold(
        body: TelaPrincipal(),
        //body: AtualizacaoDados(),
      ),
    );
  }
}

// ignore: camel_case_types

