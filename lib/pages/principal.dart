import 'package:cybersecurity/pages/ranking.dart';
import 'package:flutter/material.dart';
import 'package:cybersecurity/pages/introdcciber.dart';
import 'package:cybersecurity/pages/questionario.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({Key? key}) : super(key: key);
  @override
  PrincipalScreenState createState() => PrincipalScreenState();
}

class PrincipalScreenState extends State<PrincipalScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F284C),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RankingScreen()),
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
                        ' 3. Rankings ',
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
    );
  }
}
