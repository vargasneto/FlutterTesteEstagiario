import 'package:flutter/material.dart';
import 'package:projeto_next/comum/cores.dart';
import 'package:projeto_next/view/tela_conectaApi.dart';
import 'package:projeto_next/view/tela_lista.dart';

class telaHome extends StatelessWidget {
  const telaHome({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Home",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Image.asset("images/logo.png", height: 45),
          ],
        ),
        centerTitle: true,
        backgroundColor: CoresApp.roxoAltoGradiente,
        toolbarHeight: 65,
      ),
      body: Container(
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(color: Colors.deepPurpleAccent),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => telaList(),
                    ),
                  );
                },
                child:
                    const Text(style: TextStyle(fontSize: 18.0), "Sugestões"),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(color: Colors.deepPurpleAccent),
                    ),
                  ),
                  
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => telaApi(),
                    ),
                  );
                },
                child: const Text(style: TextStyle(fontSize: 18.0), "Membros"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
