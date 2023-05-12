import 'package:aula_onze_maio/database/fake/contato_dao.dart';
import 'package:aula_onze_maio/view/dto/contato_dto.dart';
import 'package:aula_onze_maio/view/interface/contato_dao_interface.dart';
import 'package:flutter/material.dart';
import 'package:aula_onze_maio/rota.dart';

class ContatoLista extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista Contatos')),
      body: criarLista(),
      floatingActionButton: criarBotao(context),
      bottomNavigationBar: criarBarraNavegacao(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
    );
  }

  Widget criarLista() {
    ContatoDAOInterface contatoDAOInterface = ContatoDAO();
    return FutureBuilder(future: contatoDAOInterface.findAll(), 
    builder: (BuildContext context, AsyncSnapshot<List<ContatoDTO>> lista) {
      if (!lista.hasData) return CircularProgressIndicator();
      if (lista.data == null) return Container();
      List<ContatoDTO> listaContato = lista.data!;
      return ListView.builder(
        itemCount: listaContato.length,
        itemBuilder: (context, indice) {
          var contato = listaContato[indice];
          return criarItemLista(contato);
        },        
      );
    },
    );
  }

  Widget criarItemLista(ContatoDTO contatoDTO) {
    ContatoDAOInterface contatoDAOInterface = ContatoDAO();
    return ListTile(
      title: Text('CONTATO'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nome: ${contatoDTO.nome}'),
          Text('Telefone: ${contatoDTO.telefone}'),
          Text('Email: ${contatoDTO.email}'),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              print(contatoDTO.id);
              contatoDAOInterface.save(contatoDTO.id);
            },
            icon: Icon(Icons.save),
          ),
          IconButton(
            onPressed: () {
              print(contatoDTO.id);
              contatoDAOInterface.deleteById(contatoDTO.id);
            },
            icon: Icon(Icons.delete),
          ),
        ],
      ),
    );
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