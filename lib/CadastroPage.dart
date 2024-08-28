import 'package:flutter/material.dart';

class CadastroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [

            //Campo Nome
            TextField(
              decoration: InputDecoration(labelText: 'Nome'),
            ),

            //Campo Email
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),

            //Campo Senha
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Senha'),
            ),

            //Campo Confirme sua senha
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Confirme sua senha'),
            ),

            //Botão Salvar
            SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
              Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 79, 49, 136),
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
              child: const Text('Salvar'),
            ),

            //Botão Cancelar
            SizedBox(height: 20.0),            
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Volta para a tela de login
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 79, 49, 136),
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
              child: const Text('Cancelar'),
            ),
          ],
        ),
      ),
    );
  }
}