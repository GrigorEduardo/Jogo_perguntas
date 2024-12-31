import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  
  final String texto;

  final void  Function() onSeletion;

  Resposta(this.texto, this.onSeletion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
      
      style: ElevatedButton.styleFrom( backgroundColor: Colors.blue,
            ),
      onPressed: onSeletion, 
      child: Text(style: TextStyle(color: Colors.white),texto,
      )),
    );
  }
}