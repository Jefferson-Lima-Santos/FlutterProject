import 'package:flutter/material.dart';

class SobrePageScreen extends StatefulWidget {
  const SobrePageScreen({Key? key}) : super(key: key);

  @override
  _SobrePageScreenState createState() => _SobrePageScreenState();
}

class _SobrePageScreenState extends State<SobrePageScreen> {
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
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      '../lib/images/botao-de-informacoes.png',
                      fit: BoxFit.cover,
                    ),
                    const Text(
                      'Sobre',
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
              height: 80,
            ),
            Text(
              'Este aplicativo foi desenvolvido com o objetivo de abordar conceitos relevantes sobre o universo da cibersegurança, demonstrando a importância de se proteger contra ameaças virtuais.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'orbitron',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Text(
              'Aplicativo Desenvolvido por:',
              style: TextStyle(
                fontFamily: 'orbitron',
                fontSize: 14,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        '../lib/images/jefferson.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        '../lib/images/lucas.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Jefferson Lima',
                      style: TextStyle(
                        fontFamily: 'orbitron',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Lucas Murari',
                      style: TextStyle(
                        fontFamily: 'orbitron',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Aplicativo desenvolvido com o SDK Flutter, utilizando a linguagem Dart.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'orbitron',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 60,
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
