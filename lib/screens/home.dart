import 'package:flutter/material.dart';
import 'package:tarea_01/screens/login.dart';
import 'package:tarea_01/screens/scrollable.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            //Nombre es un widget extraido que contiene dos Textos.
            const Nombre(),

            Expanded(child: Container()),

            OutlinedButton(
              onPressed: ()=> Navigator.pop(context),
              child: const Login(),
            ),
          ],
        ),
      ),
    );
  }

}


class Nombre extends StatelessWidget {
  const Nombre({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 23, fontFamily: 'Rokkitt', fontWeight: FontWeight.bold, color: Colors.pink);
    const textStyle2 = TextStyle(fontSize: 80, fontFamily: 'Luxurious Script',color: Colors.pink);
    return Stack(
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Text(
              'Sonia',
              style: textStyle2,
            ),
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.fromLTRB(10, 85, 0, 0),
            child: const Text(
              'Bigatti',
              style: textStyle,
            ),
          ),
        ),
      ],
    );
  }
}


class Login extends StatelessWidget {
  const Login({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(vertical: 12),
      width: double.infinity,
      height: 50,
      child: const Text(
        'Login',
        style: TextStyle(
            fontFamily: 'Rokkitt', fontSize: 20, color: Colors.pink),
        textAlign: TextAlign.center,
      ),
    );
  }
}