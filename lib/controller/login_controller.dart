import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cybersecurity/pages/menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../util/util.dart';

class LoginController {
  //
  // CRIAR CONTA
  // Adiciona a conta de um novo usuário no serviço
  // Firebase Authentication
  //
  criarConta(context, nome, email, senha) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: email,
      password: senha,
    )
        .then((resultado) {
      //Armazenar o NOME do usuário no Firestore
      FirebaseFirestore.instance.collection('alunos').add({
        'uid': resultado.user!.uid,
        'nome': nome,
      });

      sucesso(context, 'Usuário criado com sucesso.');
      Navigator.pop(context);
    }).catchError((e) {
      switch (e.code) {
        case 'email-already-in-use':
          erro(context, 'O email já foi cadastrado.');
          break;
        case 'invalid-email':
          erro(context, 'O email informado é inválido.');
          break;
        default:
          erro(context, 'ERRO: ${e.code.toString()}');
      }
    });
  }

  //
  //LOGIN
  //
  login(context, email, senha) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: senha)
        .then((value) {
      sucesso(context, 'Usuário autenticado com sucesso.');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MenuScreenPage()),
      );
    }).catchError((e) {
      switch (e.code) {
        case 'user-not-found':
          erro(context, 'Usuário não encontrado.');
          break;
        default:
          erro(context, 'ERRO: ${e.code.toString()}');
      }
    });
  }

  //ESQUECEU A SENHA
  esqueceuSenha(context, String email) {
    if (email.isNotEmpty) {
      FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      sucesso(context, 'E-mail enviado com sucesso.');
    } else {
      erro(context, 'Não foi possível enviar o e-mail');
    }
    Navigator.pop(context);
  }

  //
  // LOGOUT
  //
  logout() {
    FirebaseAuth.instance.signOut();
  }

  //
  // ID do Usuário Logado
  //
  idUsuario() {
    return FirebaseAuth.instance.currentUser!.uid;
  }

  //
  // NOME do Usuário Logado
  //
  Future<String> usuarioLogado() async {
    var usuario = '';
    await FirebaseFirestore.instance
        .collection('alunos')
        .where('uid', isEqualTo: idUsuario())
        .get()
        .then(
      (resultado) {
        usuario = resultado.docs[0].data()['nome'] ?? '';
      },
    );
    return usuario;
  }

  Future<void> alterarNomeAluno(context, String novoNome) async {
    String idUsuario = FirebaseAuth.instance.currentUser!.uid;

    QuerySnapshot<Map<String, dynamic>> resultado = await FirebaseFirestore
        .instance
        .collection('alunos')
        .where('uid', isEqualTo: idUsuario)
        .get();

    if (resultado.docs.isNotEmpty) {
      DocumentSnapshot<Map<String, dynamic>> documento = resultado.docs[0];
      String documentoId = documento.id;

      await FirebaseFirestore.instance
          .collection('alunos')
          .doc(documentoId)
          .update({
        'nome': novoNome,
      });
      sucesso(context, 'Nome alterado com sucesso.');
    } else {
      erro(context, 'Erro! Nome não alterado.');
    }
  }
}
