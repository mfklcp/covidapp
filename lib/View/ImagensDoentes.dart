import 'package:flutter/material.dart';

class ImagensDoentes extends StatelessWidget {
  final String imagemDoente;

  ImagensDoentes(this.imagemDoente);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
      child: Align(
        alignment: Alignment(1000, 1000),
        child: FittedBox(
          fit: BoxFit.contain,
          child: Image.asset('img/$imagemDoente.png',
              height: 70, width: 70),
        ),
      ),
    );
  }
}
