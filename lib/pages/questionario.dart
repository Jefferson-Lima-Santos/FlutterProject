import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class QuestionarioPageScreen extends StatefulWidget {
  const QuestionarioPageScreen({Key? key}) : super(key: key);

  @override
  _QuestionarioPageScreenState createState() => _QuestionarioPageScreenState();
}

class _QuestionarioPageScreenState extends State<QuestionarioPageScreen> {
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
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.zero,
              child: Text(
                'Progresso',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'orbitron',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width - 64,
                  lineHeight: 40,
                  animation: true,
                  animationDuration: 2500,
                  percent: 0.3,
                  progressColor: Color.fromARGB(255, 245, 210, 14),
                  barRadius: const Radius.circular(16),
                  center: Text(
                    "50.0%",
                    style: new TextStyle(
                        fontFamily: 'orbitron',
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                        fontSize: 18.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              height: 50,
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
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Radio(value: 1, groupValue: 1, onChanged: (value) {}),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Radio(value: 2, groupValue: 1, onChanged: (value) {}),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Radio(value: 3, groupValue: 1, onChanged: (value) {}),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Radio(value: 4, groupValue: 1, onChanged: (value) {}),
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
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
