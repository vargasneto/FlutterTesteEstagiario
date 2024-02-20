import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:projeto_next/comum/cores.dart';
import 'package:projeto_next/view/tela_mostrarApi.dart';

class telaApi extends StatefulWidget {
  @override
  telaApiState createState() => telaApiState();
}

class telaApiState extends State<telaApi> {
  Future<List> pegarUsers() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Erro ao carregar os dados");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Membros",
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
        child: FutureBuilder<List>(
          future: pegarUsers(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text("Erro ao Carregar"),
              );
            }

            if (snapshot.hasData) {
              return ListView.separated(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      snapshot.data![index]['username'],
                      style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      snapshot.data![index]['email'],
                      style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(Icons.account_circle_rounded),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              telaAPI(usuario: snapshot.data![index]),
                        ),
                      );
                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.black87,
                    thickness: 1.0,
                    height: 0.0,
                  );
                },
              );
            }

            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
