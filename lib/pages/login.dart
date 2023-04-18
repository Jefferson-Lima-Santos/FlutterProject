import 'package:cybersecurity/pages/cadastro.dart';
import 'package:cybersecurity/pages/esqueceuasenha.dart';
import 'package:cybersecurity/pages/menu.dart';
import 'package:flutter/material.dart';

class LoginScreenPage extends StatefulWidget {
  const LoginScreenPage({Key? key}) : super(key: key);

  @override
  LoginScreenPageState createState() => LoginScreenPageState();
}

class LoginScreenPageState extends State<LoginScreenPage> {
  bool _isChecked = false;

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
            const SizedBox(
              height: 50,
            ),
            const TextField(
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
            const TextField(
              style: TextStyle(
                color: Colors.blue,
              ),
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                prefixIconColor: Colors.white,
                hintText: 'Senha',
                hintStyle: TextStyle(color: Colors.blue),
                labelText: 'Senha',
                labelStyle: TextStyle(color: Colors.white),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                const Text(
                  'Lembre minha senha',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // ação a ser executada quando o botão for pressionado
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MenuScreenPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(280, 50),
                backgroundColor: Colors.blue,
              ),
              child: const Text('Login',
                  style: TextStyle(
                    fontFamily: 'NovaSlim',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            GestureDetector(
              onTap: () {
                // ação a ser tomada quando o texto for clicado
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EsqueceuasenhaPageScreen()),
                );
              },
              child: const Text(
                'Esqueceu a sua senha?',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            const Text(
              'Ainda não tem uma conta?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () {
                // ação a ser tomada quando o texto for clicado
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CadastroScreenPage()),
                );
              },
              child: const Text(
                'Cadastrar',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
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
