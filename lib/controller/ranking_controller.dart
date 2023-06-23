// import 'package:app07_lista_tarefas/controller/login_controller.dart';
import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../util/util.dart';

class RankingController {
  //
  // ADICIONAR uma nova Tarefa
  //
  // void adicionar(context, Tarefa t) {
  //   FirebaseFirestore.instance
  //       .collection('tarefas')
  //       .add(t.toJson())
  //       .then((value) => sucesso(context, 'Tarefa adicionada com sucesso'))
  //       .catchError(
  //           (e) => erro(context, 'Não foi possível adicionar a tarefa.'))
  //       .whenComplete(() => Navigator.pop(context));
  // }

  //
  // EXCLUIR
  //
  void excluir(context, id) {
    FirebaseFirestore.instance
        .collection('tarefas')
        .doc(id)
        .delete()
        .then((value) => sucesso(context, 'Tarefa excluída com sucesso'))
        .catchError((e) => erro(context, 'Não foi possível excluir a tarefa.'));
  }

  //
  // LISTAR todas as Tarefas da coleção
  //
  listar() {
    return FirebaseFirestore.instance
        .collection('alunos')
        .orderBy('nota', descending: true);
  }

  Stream<QuerySnapshot> pesquisarUsuario(String nome) {
    CollectionReference<Map<String, dynamic>> collection =
        FirebaseFirestore.instance.collection('alunos');

    Query<Map<String, dynamic>> query = collection;

    if (nome.isNotEmpty) {
      print(nome);
      String proximoNome = nome.substring(0, nome.length - 1) +
          String.fromCharCode(nome.codeUnitAt(nome.length - 1) + 1);
      query = query
          .where('nome', isGreaterThanOrEqualTo: nome)
          .where('nome', isLessThan: proximoNome);
    } else {
      query = query.orderBy('nota', descending: true);
    }

    return query.snapshots();
  }
}
