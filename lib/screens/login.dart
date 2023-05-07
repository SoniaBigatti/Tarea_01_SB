import 'package:flutter/material.dart';
import 'package:tarea_01/screens/home.dart';

import '../Widgets/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector( onTap: (){FocusScope.of(context).unfocus();},
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  //Widget de texto extraido.
                  const TextoInicioSecion(),
                  //Widget de Imput extraido con argumento.
                  const Imput(
                    text: 'E-mail usuario',
                  ),
          
                  const SizedBox(height: 20),
          
                  const Imput(
                    text: 'Clave de usuario',
                  ),
          
                  const SizedBox(height: 270),
          
                  const CustomButton(),
          
                  const SizedBox(height: 20),
                  OutlinedButton(
                    onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder:(context) => const MyHomePage())),
                    child: const Volver(),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}



class TextoInicioSecion extends StatelessWidget {
  const TextoInicioSecion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24),
      height: 30,
      child: const Text(
        'Iniciar Sesión',
        style: TextStyle(
            fontFamily: 'Rokkitt', fontSize: 26, fontWeight: FontWeight.bold, color: Colors.pink),
      ),
    );
  }
}

// widget extraido
class Imput extends StatelessWidget {
  final String text;
  const Imput({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        // ignore: unnecessary_this
        label: Text(this.text),
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}


class Volver extends StatelessWidget {
  const Volver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 60,
      child: const Text(
        'VOLVER', style: TextStyle(fontFamily: 'Rokkitt', fontSize: 20,fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}