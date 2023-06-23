import 'package:flutter/material.dart';
import 'package:cybersecurity/controller/login_controller.dart';

class PerfilPageScreen extends StatefulWidget {
  const PerfilPageScreen({Key? key}) : super(key: key);

  @override
  _PerfilPageScreenState createState() => _PerfilPageScreenState();
}

class _PerfilPageScreenState extends State<PerfilPageScreen> {
  var txtSobreUsuario = TextEditingController();
  var txtNome = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF0F284C),
        body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  '../lib/images/hacker.png',
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 50,
                ),
                const Text(
                  'Meu Perfil',
                  style: TextStyle(
                    fontFamily: 'orbitron',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                const Text(
                  'Nome do usuário',
                  style: TextStyle(
                    fontFamily: 'orbitron',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                TextField(
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
                SizedBox(
                  height: 200,
                ),
                ElevatedButton(
                  onPressed: () {
                    // ação a ser executada quando o botão for pressionado
                    LoginController().alterarNomeAluno(
                      context,
                      txtNome.text,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(280, 50),
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text('Alterar Dados',
                      style: TextStyle(
                        fontFamily: 'NovaSlim',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            )));
  }
}
