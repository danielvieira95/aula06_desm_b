/*
Aplicativo aula 06 - Desenvolvimento Mobile 1
Data: 25/08/2023*/

import 'package:flutter/material.dart';

int cont = 0;
void _msg() {
  cont = cont + 1;
  print("Desenvolvimento Mobile 1");
  print("Contagem $cont");
}

void _msg2() {
  cont = cont - 1;
  print("Contagem $cont");
  print("Senai");
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(color: Colors.red, width: 400, height: 80),
                Container(
                  color: Colors.blue,
                  width: 350,
                  height: 50,
                  child: Text(
                    "Mobile",
                    style: TextStyle(
                        decoration: TextDecoration.none, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(color: Colors.blue, height: 50, width: 50),
                Container(color: Colors.green, height: 50, width: 50),
                Container(color: Colors.red, height: 50, width: 50),
              ],
            ),
            Container(
              color: Colors.amber,
              height: 50,
              width: 300,
              child: Text(
                "Senai",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    decoration: TextDecoration.none),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("Você apertou o botao1");
              },
              child: Text("Botão 1"),
            ),
            ElevatedButton(onPressed: _msg, child: Text("Mensagem 2")),
            ElevatedButton(onPressed: _msg2, child: Text("Mensagem 2")),
          ],
        ),
      ),
    );
  }
}
