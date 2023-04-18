import 'package:cybersecurity/pages/introdcciber.dart';
import 'package:cybersecurity/pages/login.dart';
import 'package:cybersecurity/pages/questionario.dart';
import 'package:cybersecurity/pages/sobre.dart';
import 'package:flutter/material.dart';
import 'package:cybersecurity/pages/feedback.dart';

class MenuScreenPage extends StatefulWidget {
  const MenuScreenPage({Key? key}) : super(key: key);

  @override
  _MenuScreenPageState createState() => _MenuScreenPageState();
}

class _MenuScreenPageState extends State<MenuScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
          backgroundColor: Color(0xF152e51),
          centerTitle: true,
          title: const Text('BE SAFE')),
      backgroundColor: const Color(0xFF0F284C),
      drawer: Drawer(
        backgroundColor: Color(0xFF0F284C),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: [
                  const Text(
                    'MENU',
                    style: TextStyle(
                      fontFamily: 'orbitron',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              decoration: const BoxDecoration(
                color: Color(0xFF0F284C),
              ),
            ),
            ListTile(
              title: const Text(
                'Sobre',
                style: TextStyle(
                  fontFamily: 'orbitron',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SobrePageScreen()),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Mande um Feedback',
                style: TextStyle(
                  fontFamily: 'orbitron',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FeedPageScreen()),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Sair',
                style: TextStyle(
                  fontFamily: 'orbitron',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LoginScreenPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset(
              '../lib/images/hacker.png',
              fit: BoxFit.cover,
            ),
            const Text(
              'Seja bem-vindo',
              style: TextStyle(
                fontFamily: 'orbitron',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              '50%',
                              style: TextStyle(
                                fontFamily: 'orbitron',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              'Monitoramento',
                              style: TextStyle(
                                fontFamily: 'orbitron',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              '100%',
                              style: TextStyle(
                                fontFamily: 'orbitron',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              'Cybersecurity',
                              style: TextStyle(
                                fontFamily: 'orbitron',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            Text(
                              '50%',
                              style: TextStyle(
                                fontFamily: 'orbitron',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Text(
                              'Integridade',
                              style: TextStyle(
                                fontFamily: 'orbitron',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              'Por favor, selecione o módulo de estudo:',
              style: TextStyle(
                fontFamily: 'orbitron',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: <
                Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IntrodcciberScreenPage()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue, // Cor de preenchimento
                      borderRadius:
                          BorderRadius.circular(10), // Borda arredondada
                      border: Border.all(
                          color: Colors.black,
                          width: 2), // Borda preta com largura de 2
                    ),
                    width: 200, // Largura do container
                    height: 100, // Altura do container
                    child: Center(
                      child: Text(
                        ' 1. Introdução  à cibersegurança ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white, // Cor do texto
                          fontSize: 18, // Tamanho da fonte do texto
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue, // Cor de preenchimento
                      borderRadius:
                          BorderRadius.circular(10), // Borda arredondada
                      border: Border.all(
                          color: Colors.black,
                          width: 2), // Borda preta com largura de 2
                    ),
                    width: 200, // Largura do container
                    height: 100, // Altura do container
                    child: Center(
                      child: Text(
                        '2. Protegendo os seus dados pessoais',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white, // Cor do texto
                          fontSize: 18, // Tamanho da fonte do texto
                        ),
                      ),
                    ),
                  ),
                )
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                GestureDetector(
                  onTap: () {
                    // Ação a ser realizada quando o container for clicado
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue, // Cor de preenchimento
                      borderRadius:
                          BorderRadius.circular(10), // Borda arredondada
                      border: Border.all(
                          color: Colors.black,
                          width: 2), // Borda preta com largura de 2
                    ),
                    width: 200, // Largura do container
                    height: 100, // Altura do container
                    child: Center(
                      child: Text(
                        ' 3. Gerenciamento de senhas ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white, // Cor do texto
                          fontSize: 18, // Tamanho da fonte do texto
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Ação a ser realizada quando o container for clicado
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const QuestionarioPageScreen()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue, // Cor de preenchimento
                      borderRadius:
                          BorderRadius.circular(10), // Borda arredondada
                      border: Border.all(
                          color: Colors.black,
                          width: 2), // Borda preta com largura de 2
                    ),
                    width: 200, // Largura do container
                    height: 100, // Altura do container
                    child: Center(
                      child: Text(
                        ' 4. Fixando conceitos',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white, // Cor do texto
                          fontSize: 18, // Tamanho da fonte do texto
                        ),
                      ),
                    ),
                  ),
                )
              ]),
            ]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        backgroundColor: Color(0xF152e51),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}
