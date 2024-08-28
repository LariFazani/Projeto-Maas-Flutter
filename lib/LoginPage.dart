import 'package:flutter/material.dart';
import 'package:projeto_maas_flutter/CadastroPage.dart';
import 'package:projeto_maas_flutter/TelaInicial.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Título
        title: const Text('Login'),
      ),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [

            //Campo email
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
              
            ),

            //Campo senha
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Senha'),
            ),

            //Botão esqueci minha senha
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _mostrarPopupRecuperarSenha(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 79, 49, 136),
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
              ),  
              child: Text('Esqueci minha senha'),
            ),

            //Botão prosseguir para a tela inicial
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                print("Botão 'Prosseguir' pressionado");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaInicial()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 79, 49, 136),
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
              child: const Text('Prosseguir'),
            ),

            //Botão prosseguir para a tela de cadastro
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CadastroPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 79, 49, 136),
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Text('Quero me cadastrar!'),
            ),
          ],
        ),
      ),
    );
  }

//Pop up para esqueci minha senha
  void _mostrarPopupRecuperarSenha(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Recuperar Senha'),
          content: TextField(
            decoration: InputDecoration(hintText: 'Digite seu email'),
          ),
          actions: [

            // Botão enviar
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Fecha o diálogo
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 79, 49, 136),
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
              child: const Text('Enviar'),
            ),

            //Botão cancelar
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Fecha o diálogo
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 79, 49, 136),
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
              child: const Text('Cancelar'),
            ),
          ],
        );
      },
    );
  }
}

