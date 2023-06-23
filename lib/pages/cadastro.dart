import '../controller/login_controller.dart';
import 'package:flutter/material.dart';

import '../util/util.dart';

class CadastroScreenPage extends StatefulWidget {
  const CadastroScreenPage({Key? key}) : super(key: key);

  @override
  _CadastroScreenPageState createState() => _CadastroScreenPageState();
}

class _CadastroScreenPageState extends State<CadastroScreenPage> {
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  var txtConfSenha = TextEditingController();
  var txtNome = TextEditingController();
  bool showPart2 = false;
  bool showPart3 = false;
  int showpart = 0;
  @override
  Widget build(BuildContext context) {
    if (showPart2 == false && showPart3 == false) {
      showpart = 1;
    } else if (showPart2 == true && showPart3 == false) {
      showpart = 2;
    }
    return Scaffold(
      backgroundColor: const Color(0xFF0F284C),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              '../lib/images/hacker.png',
              fit: BoxFit.cover,
            ),
            const Text(
              'CADASTRO',
              style: TextStyle(
                fontFamily: 'orbitron',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Visibility(
              visible: showpart == 1,
              maintainSize: false,
              child: Text(
                'Por favor, Digite o seu Nome e o Seu e-mail!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'orbitron',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              replacement: const Text(
                'Por favor, Digite a sua Senha e a Confirme!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'orbitron',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Visibility(
              visible: showpart == 1,
              maintainSize: false,
              child: TextField(
                controller: txtNome,
                style: TextStyle(
                  color: Colors.blue,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  prefixIconColor: Colors.white,
                  hintText: 'Seu nome vai aqui',
                  hintStyle: TextStyle(color: Colors.blue),
                  labelText: 'Nome',
                  labelStyle: TextStyle(color: Colors.white),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              replacement: TextField(
                controller: txtSenha,
                obscureText: true,
                style: TextStyle(
                  color: Colors.blue,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  prefixIconColor: Colors.white,
                  hintText: 'Sua senha vai aqui',
                  hintStyle: TextStyle(color: Colors.blue),
                  labelText: 'senha',
                  labelStyle: TextStyle(color: Colors.white),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: showpart == 1,
              maintainSize: false,
              child: TextField(
                controller: txtEmail,
                style: TextStyle(
                  color: Colors.blue,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  prefixIconColor: Colors.white,
                  hintText: 'email@email.com.br',
                  hintStyle: TextStyle(color: Colors.blue),
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              replacement: TextField(
                controller: txtConfSenha,
                obscureText: true,
                style: TextStyle(
                  color: Colors.blue,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  prefixIconColor: Colors.white,
                  hintText: 'Confirme a senha',
                  hintStyle: TextStyle(color: Colors.blue),
                  labelText: 'Confirmar Senha',
                  labelStyle: TextStyle(color: Colors.white),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // ação a ser executada quando o botão for pressionado
                if (showPart2 == false && showPart3 == false) {
                  if (txtEmail.text != '' && txtNome.text != '') {
                    setState(() {
                      showPart2 = true;
                    });
                  } else {
                    erro(context, 'Preencha todos os campos!');
                  }
                } else if (showPart2 == true) {
                  if (txtSenha.text != '' &&
                      txtConfSenha.text == txtSenha.text) {
                    LoginController().criarConta(
                      context,
                      txtNome.text,
                      txtEmail.text,
                      txtSenha.text,
                    );
                  } else {
                    erro(context, 'Verifique a senha!');
                  }
                }
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(280, 50),
                backgroundColor: Colors.blue,
              ),
              child: const Text('Avançar',
                  style: TextStyle(
                    fontFamily: 'NovaSlim',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
