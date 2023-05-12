import 'package:aula_onze_maio/view/dto/contato_dto.dart';
import 'package:aula_onze_maio/view/interface/contato_dao_interface.dart';
import 'package:flutter/material.dart';

class ContatoDAO implements ContatoDAOInterface {

  var listaContatos = <ContatoDTO> [
    ContatoDTO.dados(
        id: 1,
        nome: 'Rachid',
        email: 'lucasrachid@hotmail.com',
        telefone: '(44) 99943-6290',
        UrlAvatar:
            'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/dbe8e621-a000-4270-a75e-8a34d5800d1b/d36cpe8-a24dbf14-dd3b-4631-8a86-a15ce7bbaad1.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2RiZThlNjIxLWEwMDAtNDI3MC1hNzVlLThhMzRkNTgwMGQxYlwvZDM2Y3BlOC1hMjRkYmYxNC1kZDNiLTQ2MzEtOGE4Ni1hMTVjZTdiYmFhZDEuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.DQc7KhdR1qdXtpMN97-MVGJmPF9-xKxN_EkepPo7vvM'),
    ContatoDTO.dados(
        id: 2,
        nome: 'Joile',
        email: 'lucasrachid@hotmail.com',
        telefone: '(44) 99943-6290',
        UrlAvatar:
            'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/dbe8e621-a000-4270-a75e-8a34d5800d1b/d36cpe8-a24dbf14-dd3b-4631-8a86-a15ce7bbaad1.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2RiZThlNjIxLWEwMDAtNDI3MC1hNzVlLThhMzRkNTgwMGQxYlwvZDM2Y3BlOC1hMjRkYmYxNC1kZDNiLTQ2MzEtOGE4Ni1hMTVjZTdiYmFhZDEuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.DQc7KhdR1qdXtpMN97-MVGJmPF9-xKxN_EkepPo7vvM'),
    ContatoDTO.dados(
        id: 3,
        nome: 'Max',
        email: 'lucasrachid@hotmail.com',
        telefone: '(44) 99943-6290',
        UrlAvatar:
            'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/dbe8e621-a000-4270-a75e-8a34d5800d1b/d36cpe8-a24dbf14-dd3b-4631-8a86-a15ce7bbaad1.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2RiZThlNjIxLWEwMDAtNDI3MC1hNzVlLThhMzRkNTgwMGQxYlwvZDM2Y3BlOC1hMjRkYmYxNC1kZDNiLTQ2MzEtOGE4Ni1hMTVjZTdiYmFhZDEuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.DQc7KhdR1qdXtpMN97-MVGJmPF9-xKxN_EkepPo7vvM'),
    ContatoDTO.dados(
        id: 4,
        nome: 'Davi',
        email: 'lucasrachid@hotmail.com',
        telefone: '(44) 99943-6290',
        UrlAvatar:
            'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/dbe8e621-a000-4270-a75e-8a34d5800d1b/d36cpe8-a24dbf14-dd3b-4631-8a86-a15ce7bbaad1.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2RiZThlNjIxLWEwMDAtNDI3MC1hNzVlLThhMzRkNTgwMGQxYlwvZDM2Y3BlOC1hMjRkYmYxNC1kZDNiLTQ2MzEtOGE4Ni1hMTVjZTdiYmFhZDEuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.DQc7KhdR1qdXtpMN97-MVGJmPF9-xKxN_EkepPo7vvM'),
    ContatoDTO.dados(
        id: 5,
        nome: 'Gabriel',
        email: 'lucasrachid@hotmail.com',
        telefone: '(44) 99943-6290',
        UrlAvatar:
            'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/dbe8e621-a000-4270-a75e-8a34d5800d1b/d36cpe8-a24dbf14-dd3b-4631-8a86-a15ce7bbaad1.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2RiZThlNjIxLWEwMDAtNDI3MC1hNzVlLThhMzRkNTgwMGQxYlwvZDM2Y3BlOC1hMjRkYmYxNC1kZDNiLTQ2MzEtOGE4Ni1hMTVjZTdiYmFhZDEuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.DQc7KhdR1qdXtpMN97-MVGJmPF9-xKxN_EkepPo7vvM'),
          
  ];


  @override
  Future<bool> deleteById(contatoDTO) {
    print(contatoDTO);
    return Future.value(true);
  }

  @override
  Future<List<ContatoDTO>> findAll() {
    return Future.value(listaContatos);
  }

  @override
  Future<ContatoDTO> findById(id) {
    return Future.value(listaContatos.firstWhere((element) => element.id == id));
  }

  @override
  Future<ContatoDTO> save(ContatoDTO contatoDTO) {
    print(contatoDTO);
    return Future.value(contatoDTO);
  }

  @override
  Future<ContatoDTO> update(ContatoDTO contatoDTO) {
    print(contatoDTO);
    return Future.value(contatoDTO);
  }

}