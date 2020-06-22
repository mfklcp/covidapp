import 'package:flutter/material.dart';

class LegendaCasos extends StatelessWidget {
  final String legendaCasos;

  LegendaCasos(this.legendaCasos);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
      child: Container(
        child: Text('casos\n$legendaCasos',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontFamily: 'Gotham-black',
            )),
      ),
    );
  }
}
