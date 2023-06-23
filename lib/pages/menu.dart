import 'package:cybersecurity/pages/login.dart';
import 'package:cybersecurity/pages/principal.dart';
import 'package:cybersecurity/pages/sobre.dart';
import 'package:flutter/material.dart';
import 'package:cybersecurity/pages/feedback.dart';
import 'package:cybersecurity/pages/perfil.dart';
import 'package:cybersecurity/controller/login_controller.dart';

class MenuScreenPage extends StatefulWidget {
  const MenuScreenPage({Key? key}) : super(key: key);

  @override
  _MenuScreenPageState createState() => _MenuScreenPageState();
}

class _MenuScreenPageState extends State<MenuScreenPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);
  static const _pages = <Widget>[
    PrincipalScreen(),
    PerfilPageScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            FutureBuilder<String>(
              future: LoginController().usuarioLogado(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextButton.icon(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.all(20),
                        textStyle: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        LoginController().logout();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreenPage()),
                        );
                      },
                      icon: Icon(Icons.exit_to_app, size: 14),
                      label: Text(snapshot.data.toString()),
                    ),
                  );
                }
                return Text('');
              },
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
        child: _pages.elementAt(_selectedIndex),
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
