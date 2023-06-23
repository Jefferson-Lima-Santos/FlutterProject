import 'package:flutter/material.dart';
import '../controller/login_controller.dart';
import 'package:cybersecurity/pages/login.dart';

class EsqueceuasenhaPageScreen extends StatefulWidget {
  const EsqueceuasenhaPageScreen({Key? key}) : super(key: key);

  @override
  _EsqueceuasenhaPageScreenState createState() =>
      _EsqueceuasenhaPageScreenState();
}

class _EsqueceuasenhaPageScreenState extends State<EsqueceuasenhaPageScreen> {
  var txtEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
              'BE SAFE',
              style: TextStyle(
                fontFamily: 'orbitron',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              'Esqueceu a sua senha? Não tem problema, insira o e-mail e enviaremos as instruções :)',
              textAlign: TextAlign.center,
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
            TextField(
              controller: txtEmail,
              style: TextStyle(
                color: Colors.blue,
              ),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                prefixIconColor: Colors.white,
                hintText: 'email@email.com',
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
            ElevatedButton(
              onPressed: () {
                LoginController().esqueceuSenha(context, txtEmail.text);
                // ação a ser executada quando o botão for pressionado
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(280, 50),
                backgroundColor: Colors.blue,
              ),
              child: const Text('Enviar',
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
