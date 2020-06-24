import 'package:flutter/material.dart';

class NumeroCasos extends StatelessWidget {
  final String numeroCasos;

  NumeroCasos(this.numeroCasos);

  @override
  Widget build(BuildContext context) {
    final queryData = MediaQuery.of(context);

    return (Container(
      child: Text(numeroCasos,
          style: TextStyle(
            color: Colors.white,
            fontSize: queryData.size.height/17,
            fontFamily: 'Gotham-black',
          )),
    ));
  }
}
