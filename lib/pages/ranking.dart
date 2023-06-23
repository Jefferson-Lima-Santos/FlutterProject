import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cybersecurity/pages/cadastro.dart';
import 'package:cybersecurity/pages/esqueceuasenha.dart';
import '../controller/ranking_controller.dart';
import 'package:flutter/material.dart';

class RankingScreen extends StatefulWidget {
  const RankingScreen({Key? key}) : super(key: key);

  @override
  RankingScreenState createState() => RankingScreenState();
}

class RankingScreenState extends State<RankingScreen> {
  var txtUsuario = TextEditingController();
  var txtPontos = TextEditingController();
  TextEditingController searchController = TextEditingController();
  String searchQuery = '';

  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _performSearch() {
    setState(() {
      searchQuery = searchController.text;
    });
    // Realizar a lógica de pesquisa com base no nome de usuário aqui
    // Exemplo:
    // searchByUsername(_searchQuery);
    RankingController().pesquisarUsuario(searchQuery);
  }

  @override
  Widget build(BuildContext context) {
    var txtTitulo = TextEditingController();
    var txtDescricao = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: TextField(
          controller: searchController,
          onChanged: (value) {
            setState(() {
              searchQuery = value;
            });
          },
          decoration: InputDecoration(
            hintText: 'Pesquisar',
            border: InputBorder.none,
            suffixIcon: IconButton(
              onPressed: _performSearch,
              icon: Icon(Icons.search),
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xFF0F284C),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
              ],
            ),
            const Text(
              '* RANKING *',
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
            StreamBuilder<QuerySnapshot>(
              stream: RankingController().pesquisarUsuario(searchQuery),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                    return Center(
                      child: Text('Não foi possível conectar.'),
                    );
                  case ConnectionState.waiting:
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  default:
                    if (snapshot.hasData) {
                      final dados = snapshot.data;
                      if (dados!.size > 0) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: dados.size,
                          itemBuilder: (context, index) {
                            String id = dados.docs[index].id;
                            dynamic item = dados.docs[index].data();
                            return Card(
                              child: ListTile(
                                leading: Icon(Icons.person),
                                title: Text(item['nome']),
                                subtitle: Text(item['nota']),
                              ),
                            );
                          },
                        );
                      }
                    }
                    return Center(
                      child: Text('Nenhum dado encontrado.'),
                    );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
