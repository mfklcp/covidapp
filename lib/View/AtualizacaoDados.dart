import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DadosInformativos.dart';

class AtualizacaoDados extends StatelessWidget {
  final TextEditingController _controllerCampoConfirmados = TextEditingController();
  final TextEditingController _controllerCampoRecuperados = TextEditingController();
  final TextEditingController _controllerCampoAtivos = TextEditingController();
  final TextEditingController _controllerCampoSuspeitos = TextEditingController();
  final TextEditingController _controllerCampoDescartados = TextEditingController();
  final TextEditingController _controllerCampoObitos = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Atualização de Casos'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[ //Entender depois essa parada de Controller
                CampoFormulario(_controllerCampoConfirmados, 'Casos confirmados', '0000', Icons.check_circle),
                CampoFormulario(_controllerCampoDescartados, 'Casos recuperados', '0000', Icons.sentiment_very_satisfied),
                CampoFormulario(_controllerCampoRecuperados, 'Casos ativos', '0000', Icons.add_circle),
                CampoFormulario(_controllerCampoAtivos, 'Casos suspeitos', '0000', Icons.do_not_disturb_on),
                CampoFormulario(_controllerCampoSuspeitos, 'Casos descartados', '0000', Icons.block),
                CampoFormulario(_controllerCampoObitos, 'Casos de óbitos', '0000', Icons.cancel),
                RaisedButton(
                  child: Text('Enviar'),
                  onPressed: (){
                    final int confirmados = int.tryParse(_controllerCampoConfirmados.text);
                    final int recuperados = int.tryParse(_controllerCampoRecuperados.text);
                    final int ativos = int.tryParse(_controllerCampoAtivos.text);
                    final int suspeitos = int.tryParse(_controllerCampoSuspeitos.text);
                    final int descartados = int.tryParse(_controllerCampoDescartados.text);
                    final int obitos = int.tryParse(_controllerCampoObitos.text);

                    final dadosAtualizados = DadosInformativos(1, confirmados);

                    debugPrint('$confirmados');
                    Navigator.pop(context, dadosAtualizados);
                  },
                )
              ],
            ),
          ),
        );
  }
}

class CampoFormulario extends StatelessWidget {
  @override

  final TextEditingController _controller;
  final String _titulo;
  final String _dica;
  final IconData _icone;

  CampoFormulario(this._controller, this._titulo, this._dica, this._icone);

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _controller,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
            labelText: _titulo, hintText: _dica, icon: Icon(_icone)),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
