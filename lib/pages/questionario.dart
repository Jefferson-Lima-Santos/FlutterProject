import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class QuestionarioPageScreen extends StatefulWidget {
  const QuestionarioPageScreen({Key? key}) : super(key: key);

  @override
  _QuestionarioPageScreenState createState() => _QuestionarioPageScreenState();
}

class _QuestionarioPageScreenState extends State<QuestionarioPageScreen> {
  int valorselecionado = 0;
  double percent = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xF152e51),
        centerTitle: true,
        title: const Text('BE SAFE'),
        actions: [],
      ),
      backgroundColor: const Color(0xFF0F284C),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            Column(
              children: <Widget>[
                Text(
                  'Progresso',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'orbitron',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width - 64,
                    lineHeight: 40,
                    animation: true,
                    animationDuration: 2500,
                    percent: percent,
                    progressColor: Color.fromARGB(255, 245, 210, 14),
                    barRadius: const Radius.circular(16),
                    center: Text(
                      "${(percent * 100).toStringAsFixed(1)}%",
                      style: new TextStyle(
                          fontFamily: 'orbitron',
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: 18.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
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
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Radio(
                      value: 1,
                      groupValue: valorselecionado,
                      onChanged: (value) {
                        setState(() {
                          valorselecionado = 1;
                          percent = 0.33;
                        });
                      },
                      fillColor: MaterialStateProperty.all(Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        textAlign: TextAlign.center,
                        "A proteção de dispositivos eletrônicos contra malwares.",
                        style: TextStyle(
                          fontFamily: 'orbitron',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Radio(
                      value: 2,
                      groupValue: valorselecionado,
                      onChanged: (value) {
                        setState(() {
                          valorselecionado = 2;
                          percent = 0.33;
                        });
                      },
                      fillColor: MaterialStateProperty.all(Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        textAlign: TextAlign.center,
                        "Um conjunto de medidas para garantir a segurança de informações em ambientes digitais.",
                        style: TextStyle(
                          fontFamily: 'orbitron',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Radio(
                      value: 3,
                      groupValue: valorselecionado,
                      onChanged: (value) {
                        setState(() {
                          valorselecionado = 3;
                          percent = 0.33;
                        });
                      },
                      fillColor: MaterialStateProperty.all(Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        textAlign: TextAlign.center,
                        "A garantia da privacidade de usuários em redes sociais.",
                        style: TextStyle(
                          fontFamily: 'orbitron',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Radio(
                      value: 4,
                      groupValue: valorselecionado,
                      onChanged: (value) {
                        setState(() {
                          valorselecionado = 4;
                          percent = 0.33;
                        });
                      },
                      fillColor: MaterialStateProperty.all(Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        textAlign: TextAlign.center,
                        "A prevenção de ataques de vírus em servidores de empresas.",
                        style: TextStyle(
                          fontFamily: 'orbitron',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.transparent,
        backgroundColor: Color(0xF152e51),
        items: [
          BottomNavigationBarItem(
            icon: Opacity(
              opacity: 0.0,
              child: SizedBox(),
            ),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.arrow_circle_right_outlined,
                size: 32,
              ),
              label: 'Avançar',
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}
