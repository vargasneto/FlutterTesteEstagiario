import 'package:flutter/material.dart';
import 'package:projeto_next/comum/cores.dart';

class telaAPI extends StatelessWidget {
  final Map<String, dynamic> usuario;

  telaAPI({required this.usuario});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Dados",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Image.asset("images/logo.png", height: 45),
          ],
        ),
        centerTitle: true,
        backgroundColor: CoresApp.roxoAltoGradiente,
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
        child: ListView(
          children: [
            ListTile(
              title: Text(
                "Nome: ${usuario['name']}",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Username: ${usuario['username']}",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                "Website: ${usuario['website']}",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            
          ],
          
        ),
        
      ),
    );
  }
}
