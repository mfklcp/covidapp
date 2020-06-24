import 'package:flutter/material.dart';

class LegendaCasos extends StatelessWidget {
  final String legendaCasos;

  LegendaCasos(this.legendaCasos);

  @override
  Widget build(BuildContext context) {
    final queryData = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
      child: Container(
        child: Text('casos\n$legendaCasos',
            style: TextStyle(
              color: Colors.white,
              fontSize: queryData.size.height/45,
              fontFamily: 'Gotham-black',
            )),
      ),
    );
  }
}
