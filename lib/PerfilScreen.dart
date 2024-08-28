import 'package:flutter/material.dart';
import 'package:projeto_maas_flutter/TelaInicial.dart';

class PerfilScreen extends StatefulWidget {
  @override
  _PerfilScreenState createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  bool _possuiMobilidadeReduzida = false;
  List<bool> _transportesPreferidos = List.generate(6, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Título
        title: const Text('Perfil', 
        style: 
        TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 79, 49, 136),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //Campo Nome
              TextFormField(
                controller: _nomeController,
                decoration: InputDecoration(labelText: 'Nome'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira seu nome';
                  }
                  return null;
                },
              ),

              //Campo Email
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira seu email';
                  }
                  return null;
                },
              ),

              //Caixa de seleção 
              CheckboxListTile(
                title: Text('Possui mobilidade reduzida'),
                value: _possuiMobilidadeReduzida,
                onChanged: (value) {
                  setState(() {
                    _possuiMobilidadeReduzida = value!;
                  });
                },
              ),

              //Lista com caixas de seleção
              Text('Transportes preferidos'),
              Wrap(
                children: [
                  for (int i = 0; i < _transportesPreferidos.length; i++)
                    CheckboxListTile(
                      title: Text(_getTransporte(i)),
                      value: _transportesPreferidos[i],
                      onChanged: (value) {
                        setState(() {
                          _transportesPreferidos[i] = value!;
                        });
                      },
                    ),
                ],
              ),

              //Botão Salvar
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('Dados do perfil salvos:');
                    print('Nome: ${_nomeController.text}');
                    print('Email: ${_emailController.text}');
                    print('Mobilidade reduzida: $_possuiMobilidadeReduzida');
                    print('Transportes preferidos: $_transportesPreferidos');
                  }
                },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 79, 49, 136),
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
                child: Text('Salvar'),
              ),

              //Botão Cancelar
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 79, 49, 136),
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Text('Cancelar'),
              ),

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
      ),
    );
  }

  String _getTransporte(int index) {
    switch (index) {
      case 0:
        return 'Ônibus';
      case 1:
        return 'Metrô';
      case 2:
        return 'Trem';
      case 3:
        return 'Carro';
      case 4:
        return 'Patinete';
      case 5:
        return 'Bicicleta';
      default:
        return '';
    }
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _emailController.dispose();
    super.dispose();
  }
}
