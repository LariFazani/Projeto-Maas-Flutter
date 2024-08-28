import 'package:flutter/material.dart';
import 'package:projeto_maas_flutter/PerfilScreen.dart';

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Título
        title: const Text('Início', 
        style: 
        TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 79, 49, 136),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),

              //Campo de pesquisa
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Pesquise aqui',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 240, 240, 240),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),

            //Mapa
            Image.asset('assets/maps.png'),

           //Menu inferior
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                // Botão tela inicial
                IconButton(
                  icon: Icon(Icons.home),
                  color: Color.fromARGB(255, 79, 49, 136),
                  onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaInicial()),
                );
              },
                ),

                // Botão tela de pagamento
                IconButton(
                  icon: Icon(Icons.monetization_on),
                  color: Color.fromARGB(255, 79, 49, 136),
                  onPressed: () {
                    // Navegar para a tela de pagamento
                  },
                ),

                // Botão tela que tem QR Code
                IconButton(
                  icon: Icon(Icons.qr_code_scanner),
                  color: Color.fromARGB(255, 79, 49, 136),
                  onPressed: () {
                    // Abrir tela que tem QR Code
                  },
                ),

                // Botão tela de perfil
                IconButton(
                  icon: Icon(Icons.person),
                  color: Color.fromARGB(255, 79, 49, 136),
                  onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PerfilScreen()),
                );
              },
              ),
            ],
            ),
          ],
        ),
      ),
    );
  }
}