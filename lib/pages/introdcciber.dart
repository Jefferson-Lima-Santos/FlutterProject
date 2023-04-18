import 'package:cybersecurity/pages/menu.dart';
import 'package:cybersecurity/pages/sobre.dart';
import 'package:flutter/material.dart';

class IntrodcciberScreenPage extends StatefulWidget {
  const IntrodcciberScreenPage({Key? key}) : super(key: key);

  @override
  _IntrodcciberScreenPageState createState() => _IntrodcciberScreenPageState();
}

class _IntrodcciberScreenPageState extends State<IntrodcciberScreenPage> {
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
                      fontSize: 14,
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
              onTap: () {},
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
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '1. Introdução à  Cibersegurança',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'orbitron',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Flexible(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        '../lib/images/problem.png',
                        fit: BoxFit.cover,
                      ),
                      const Expanded(
                        child: Text(
                          'O que é Segurança Cibernética?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'orbitron',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Text(
              '   A Segurança Cibernética é um esforço contínuo para proteger indivíduos, organizações e governos de ataques digitais por proteger.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              '      O Brasil foi o segundo país mais atingido da América Latina, com 103,16 bilhões de tentativas de ataques cibernéticos no ano de 2022, um aumento de 16% com relação a 2021.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Image.asset(
              '../lib/images/example.png',
              fit: BoxFit.cover,
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
