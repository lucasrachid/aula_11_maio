import 'package:aula_onze_maio/view/dto/contato_dto.dart';
import 'package:flutter/material.dart';
import 'package:aula_onze_maio/view/widget/campo_email.dart';
import 'package:aula_onze_maio/view/widget/campo_nome.dart';
import 'package:aula_onze_maio/view/widget/campo_telefone.dart';
import 'package:aula_onze_maio/view/widget/campo_url.dart';

class ContatoForm extends StatelessWidget{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    final args = ModalRoute.of(context)!.settings.arguments as ContatoDTO;
    
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro')),
      body: Form(
        key: _formKey,
        child: Column( 
          children: [
            campoNome,
            campoTelefone,
            campoEmail,
            campoURL,
            criarBotao(context),
          ],
        )
      )
    );
  }

  var campoNome = CampoNome();
  var campoTelefone = CampoTelefone();
  var campoEmail = CampoEmail();
  var campoURL = CampoURL();

  ElevatedButton criarBotao(BuildContext context){
    return ElevatedButton( 
      child: const Text('ok'),
      onPressed: () {
         acaoBotao(context);
      },
    );
  }

  void acaoBotao(BuildContext context){
    if(_formKey.currentState!.validate()){
        _formKey.currentState!.save();
        Navigator.pop(context);
    }
  }
}