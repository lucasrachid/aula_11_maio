import 'package:aula_onze_maio/view/interface/contato_dao_interface.dart';
import 'package:flutter/material.dart';
import 'package:aula_onze_maio/rota.dart';

class ContatoLista extends StatelessWidget {

  late ContatoDAOInterface contatoDaoInterface;

  @override
  Widget build(BuildContext context) {
    contatoDaoInterface.findAll();
    return Scaffold(
      appBar: AppBar(title: const Text('Lista Contatos')),
      body: criarLista(),
      floatingActionButton: criarBotao(context),
      bottomNavigationBar: criarBarraNavegacao(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
    );
  }

  Widget criarLista() {
    return Container();
  }

  BottomAppBar criarBarraNavegacao(){
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Container(height: 50.0),
    );
  }

  FloatingActionButton criarBotao(BuildContext context){
    return FloatingActionButton(
      onPressed: () => Navigator.pushNamed(context,Rota.contatoForm),
      tooltip: 'Adicionar novo contato',
      child: const Icon(Icons.add),
    );
  }
}