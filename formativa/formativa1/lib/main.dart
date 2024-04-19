import 'package:flutter/material.dart';
import 'package:formativa1/tela2.dart';

void main() {
  runApp(MaterialApp(
    home: telaLogin(),
  ));
}

class telaLogin extends StatefulWidget {
  telaLogin({super.key});

  @override
  State<telaLogin> createState() => _telaLoginState();
}

class _telaLoginState extends State<telaLogin> {
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.name,
              controller: user,
              decoration: InputDecoration(
                  labelText: 'Usuário',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.name,
              controller: password,
              decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60))),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (user.text == "daniel" && password.text == "abc") {
                  print('Login feito');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Tela2()));
                } else {
                  print('Login errado!');
                }
              },
              child: Text('Login')),
          ElevatedButton(onPressed: () {}, child: Text('Cadastrar'))
        ],
      ),
    );
  }
}
