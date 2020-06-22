import 'package:covidapp/View/AtualizacaoDados.dart';
import 'package:flutter/material.dart';
import 'DadosInformativos.dart';

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 80, 1),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(0, 0, 80, 1),
        title: Row(
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'img/logo.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: Text(
                'CovidApp',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Gotham-regular',
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.flag,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.share,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.insert_invitation,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),

          IconButton(
            icon: Icon(
              Icons.assignment,
              color: Colors.white,
            ),
            onPressed: () {
               final Future<DadosInformativos> future = Navigator.push(context, MaterialPageRoute(builder: (context){
                 return AtualizacaoDados();
               }));
               future.then((dadoRecebido){
                 debugPrint('Chegou no then do future');
                 debugPrint('$dadoRecebido');
               });
            },
          ),

        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
              child: Container(
                  color: Color.fromRGBO(0, 0, 80, 1),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'boletim covid',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Gotham-regular',
                        ),
                      ),
                      Text('apicum-açu',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontFamily: 'Gotham-black',
                          )),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 36, 0, 36),
              child: Container(
                  alignment: Alignment.center,
                  color: Color.fromRGBO(0, 0, 80, 1),
                  child: Text(
                    'atualizado em 09 de maio de 2020 | 21h',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: 'Gotham-regular',
                    ),
                  )),
            ),
            Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              //CONTAINER COM OS DADOS
              children: <Widget>[
                DadosInformativos(1, 111),
                DadosInformativos(2, 9),
                DadosInformativos(3, 115),
                DadosInformativos(4, 1),
                DadosInformativos(5, 999),
                DadosInformativos(6, 999),
              ],
            ),
            Column(children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 48),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.asset(
                    'img/marcas.png',
                    height: 42,
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
