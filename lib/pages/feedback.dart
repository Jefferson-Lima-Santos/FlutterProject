import 'package:cybersecurity/pages/menu.dart';
import 'package:flutter/material.dart';
import 'package:cybersecurity/pages/sobre.dart';
import 'package:cybersecurity/pages/introdcciber.dart';

class FeedPageScreen extends StatefulWidget {
  const FeedPageScreen({Key? key}) : super(key: key);

  @override
  _FeedPageScreenState createState() => _FeedPageScreenState();
}

class _FeedPageScreenState extends State<FeedPageScreen> {
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MenuScreenPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      '../lib/images/feedback.png',
                      fit: BoxFit.cover,
                      height: 35,
                      width: 35,
                      color: Colors.white,
                      alignment: Alignment.topLeft,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Mande um feedback',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'orbitron',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Nome',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'orbitron',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'BE SAFE',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'orbitron',
                fontSize: 18,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'EMAIL para coontato:',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'orbitron',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              'BeSafeRP@outlook.com',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'orbitron',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                color: Colors.yellow,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Mande um feedback para o nosso email.',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'orbitron',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              GestureDetector(
                onTap: () {
                  // Ação a ser realizada quando o container for clicado
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey, // Cor de preenchimento
                    borderRadius:
                        BorderRadius.circular(10), // Borda arredondada
                    border: Border.all(
                        color: Colors.black,
                        width: 2), // Borda preta com largura de 2
                  ),
                  width: 500, // Largura do container
                  height: 300, // Altura do container
                  child: Center(
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        prefixIconColor: Colors.white,
                        hintText: 'Digite Seu Email',
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        hoverColor: Colors.white,
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        labelText: 'Email',
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.white, // Cor do texto
                        fontSize: 18, // Tamanho da fonte do texto
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 10,
            ),
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
