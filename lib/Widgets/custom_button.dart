import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => CustomButtonState();
}

class CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.symmetric(vertical: 12),
            width: double.infinity,
            height: 50,
            child: const Text('INGRESAR', style: TextStyle(
                      fontFamily: 'Rokkitt', fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,)));
  }
}
