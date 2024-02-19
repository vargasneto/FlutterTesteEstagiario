import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class telaApi extends StatefulWidget {
  @override
  telaApiState createState() => telaApiState();
}

class telaApiState extends State<telaApi> {



  Future<List> pegarUsers() async {
      var url =Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      return json.decode((response.body));
     } else
      {
        throw Exception("Erro ao carregar os dados");
      }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts da Dummy JSON API'),
      ),
      body: FutureBuilder<List>(
      future: pegarUsers(),
      builder:(context,snapshot)
      {
        if(snapshot.hasError)
        {
          return Center(
            child:Text("Erro ao Carregar"),
          );
        }

        if(snapshot.hasData)
        {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context,index)
            {
              return ListTile(
                title:Text(snapshot.data![index]['username']),
                subtitle: Text(snapshot.data![index]['website']),
                leading: Icon(Icons.account_circle_rounded),
                onTap: ()
                {

                },
              );
            }
            );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      }
      )
    );
  }
}

