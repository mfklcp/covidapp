import 'package:flutter/material.dart';

class NumeroCasos extends StatelessWidget {
  final String numeroCasos;

  NumeroCasos(this.numeroCasos);

  @override
  Widget build(BuildContext context) {
    return (Container(
      child: Text(numeroCasos,
          style: TextStyle(
            color: Colors.white,
            fontSize: 56.0,
            fontFamily: 'Gotham-black',
          )),
    ));
  }
}
