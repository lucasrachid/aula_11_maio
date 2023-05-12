class ContatoDTO {
  dynamic id;
  String? nome;
  String? telefone;
  String? email;
  String? UrlAvatar;

  ContatoDTO();

  ContatoDTO.dados({
    this.id, 
    this.nome, 
    this.telefone, 
    this.email, 
    this.UrlAvatar
  });

  @override
  String toString() {
    return '''
      $nome
      $telefone
      $email
      $UrlAvatar
    ''';
  }
}
