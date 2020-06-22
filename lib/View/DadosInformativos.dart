import 'package:flutter/material.dart';
import 'LegendaCasos.dart';
import 'NumeroCasos.dart';
import 'ImagensDoentes.dart';

class DadosInformativos extends StatelessWidget {
  final int tipoCasos;
  final int numeroCasos;

  String
      referenciaTipo; //Um valor de 1 a 6 que representa nessa ordem: confirmado, recuperado, ativo, suspeito, descartado, obito

  DadosInformativos(this.tipoCasos, this.numeroCasos) {
    switch (tipoCasos) {
      case 1:
        {
          referenciaTipo = 'confirmados';
        }
        break;
      case 2:
        {
          referenciaTipo = 'recuperados';
        }
        break;
      case 3:
        {
          referenciaTipo = 'ativos';
        }
        break;
      case 4:
        {
          referenciaTipo = 'suspeitos';
        }
        break;
      case 5:
        {
          referenciaTipo = 'descartados';
        }
        break;
      case 6:
        {
          referenciaTipo = 'obitos';
        }
        break;
      default:
        {
          print(
              'Coloca um valor valido de 1 a 6, 1 sendo casos suspeitos e seis obitos, consulte a documentação que não existe');
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Container(width: 50,color: Colors.white //CONTAINER VAZIO PARA AJUSTAR O ALINHAMENTO
          ),
      Container(
          alignment: Alignment.centerRight,
          width: 74,
          child: ImagensDoentes(referenciaTipo)), //FAZER ENUM
      Container(
        alignment: Alignment.center,
        width: 150,
        child: NumeroCasos(numeroCasos.toString()),
      ),
      Container(
          alignment: Alignment.centerLeft,
          width: 125,
          child: LegendaCasos(referenciaTipo)),
    ]);
  }
}
