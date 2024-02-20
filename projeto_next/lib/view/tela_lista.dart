import 'package:flutter/material.dart';
import 'package:projeto_next/comum/cores.dart';
import 'package:projeto_next/repositories/filmes_repository.dart';

class telaList extends StatelessWidget {
  const telaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lista_filmes = FilmesRepository.listaFilmes;
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Sugestões",
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
        child: ListView.separated(
          itemBuilder: (BuildContext context, int filme) {
            return ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              leading: Image.asset(lista_filmes[filme].icon),
              title: Text(lista_filmes[filme].nome,
                  style:
                      TextStyle(fontSize: 14.8, fontWeight: FontWeight.bold)),
              trailing: Text("Diretor:${lista_filmes[filme].diretor}",
                  style:
                      TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                          "${lista_filmes[filme].nome} - ${lista_filmes[filme].data_lancamento.toString()}"),
                      content: Text(
                        "\nGenêro: ${lista_filmes[filme].genero}\n\nSinopse: ${lista_filmes[filme].sinopse}",
                        style: TextStyle(fontSize: 18.0),
                      ),
                      actions: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.close),
                        ),
                      ],
                    );
                  },
                );
              },
              selected: false,
              selectedTileColor: Colors.lightBlueAccent[60],
            );
          },
          padding: EdgeInsets.all(20),
          separatorBuilder: (_, __) => Divider(),
          itemCount: lista_filmes.length,
        ),
      ),
    );
  }
}
