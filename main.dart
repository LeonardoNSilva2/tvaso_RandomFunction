import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dados'),
          backgroundColor: Colors.blue,
        ),
        body: _novaPaginaDados(),
      ),
    ),
  );
}

class _novaPaginaDados extends StatefulWidget {
  const _novaPaginaDados({Key? key}) : super(key: key);

  @override
  State<_novaPaginaDados> createState() => new __novaPaginaDadosState();
}

int valorAleatorio() {
  var range = Random();

  return range.nextInt(6) + 1;
}

class __novaPaginaDadosState extends State<_novaPaginaDados> {
  int dado1 = 1;
  int dado2 = 1;
  int dado3 = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  dado1 = valorAleatorio();
                });
              },
              child: Image.asset('images/dado$dado1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  dado2 = valorAleatorio();
                });
              },
              child: Image.asset('images/dado$dado2.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  dado3 = valorAleatorio();
                });
              },
              child: Image.asset('images/dado$dado3.png'),
            ),
          ),
        ]));
  }
}
