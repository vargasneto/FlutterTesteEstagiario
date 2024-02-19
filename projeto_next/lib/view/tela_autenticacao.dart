import "package:flutter/material.dart";
import "package:projeto_next/comum/camposAutenticacao.dart";
import "package:projeto_next/comum/cores.dart";

class telaAutenticacao extends StatefulWidget {
  const telaAutenticacao({super.key});

  @override
  State<telaAutenticacao> createState() => _telaAutenticacaoState();
}

class _telaAutenticacaoState extends State<telaAutenticacao> {
  bool entrar=true;
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        children: [
          Container(
            decoration:const  BoxDecoration(gradient: LinearGradient
            (begin: Alignment.topCenter,
            end:Alignment.bottomCenter,
              colors:[
 CoresApp.topGradiente,
 CoresApp.baixoGradiente,
 CoresApp.medioGradiente,
            ])),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Form(
              key: _keyForm,
              child: Center(
                child: SingleChildScrollView(
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
                            color: Colors.black87
                            ),
                      ),
                      SizedBox(height:6),
                      TextFormField(
                        decoration: decorationField("Email"), 
                        validator: (String? value) {
                          if (value!.contains("@"))
                          {
                            return "Insira um email Válido";
                          }
                          
                          return null;
                        },    
                      ),
                      SizedBox(height:6),
                       TextFormField(
                        decoration: decorationField("Senha"),
                        obscureText: true,
                        validator:  (String? value ) {
                          if (value == null)
                          {
                            return "Insira uma Senha Válida";
                          }
                          
                          return null;
                        }, 
                       ),
                       SizedBox(height:6),
                       Visibility(visible: !entrar , 
                       child:Column (
                        children: [
                        
                          TextFormField(
                        decoration: decorationField("Nome"),
                        validator:  (String? value ) {
                          if (value == null)
                          {
                            return "Insira um Nome";
                          }
                          
                          return null;
                        }, 
                       ),
                       SizedBox(height:6),
                        ],
                        )
                       
                       ),
                  
                  SizedBox(height:20),
                       ElevatedButton(onPressed: (){
                        btnEntrar();
                       },
                        child: Text( style:TextStyle(fontSize: 22), (entrar) ? "Entrar" : "Cadastrar"),
                        ),
                     Divider(),
                     TextButton(onPressed: () {
                      setState(() {
                        entrar= !entrar;
                      });
                     },
                     child: Text( style:TextStyle(fontSize:(17),  color:Colors.cyan ) , (entrar) ? "Cadastrar-Se" : "Já possui conta? Entrar"),
                     ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  btnEntrar()
  {
    if(_keyForm.currentState!.validate())
                        {
                          print("foi"); //COLOCAR A TELA PRINCIPAL
                        }
                        else
                         {
                          print("invalido");
                        }
  }
}
