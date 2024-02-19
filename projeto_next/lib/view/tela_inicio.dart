import "package:flutter/material.dart";
import 'package:projeto_next/comum/cores.dart';
import 'package:projeto_next/view/tela_conectaApi.dart';
import 'package:projeto_next/view/tela_home.dart';
import 'package:projeto_next/view/tela_lista.dart';
import 'package:projeto_next/view/tela_autenticacao.dart';


class telaInicio extends StatelessWidget {
  const telaInicio({super.key});

  @override
  Widget build(BuildContext context) {

  return Scaffold(
  backgroundColor: Colors.blueGrey,
  body: Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              CoresApp.topGradiente,
              CoresApp.baixoGradiente,
              CoresApp.medioGradiente,
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(14.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("images/logo.png", height: 150),
              const Text(
                "Next Movie",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 39,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.deepPurpleAccent),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    final text = "Olá, Next Tecnologia!";
                    final snackbar = SnackBar(content: Text(text));
                    ScaffoldMessenger.of(context)
                      ..removeCurrentSnackBar()
                      ..showSnackBar(snackbar);
                
                    await Future.delayed(Duration(seconds: 2));
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => telaApi())
                    );
                  
                  },
                  child: const Text(style: TextStyle(fontSize: 18.0), "Iniciar!"),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
);
  }
}