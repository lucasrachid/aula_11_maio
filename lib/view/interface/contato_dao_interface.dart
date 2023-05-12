import 'package:aula_onze_maio/view/dto/contato_dto.dart';

abstract class ContatoDAOInterface {

  Future<ContatoDTO> save(ContatoDTO contatoDTO);

  Future<List<ContatoDTO>> findAll();

  Future<ContatoDTO> findById(dynamic id);

  Future<ContatoDTO> update(ContatoDTO contatoDTO);

  Future<bool> deleteById(dynamic contatoDTO);

}