class Person {
  int idPerson;
  String name;
  String urlImage;

  //DeSerialization json -> object
  Person.fromJson(Map<String, dynamic> json)
      : idPerson = json['idPessoa'],
        name = json['nome'],
        urlImage = json['urlImagem'];

  //Serialization object -> json
  Map<String, dynamic> toJson() =>
      {'idPessoa': idPerson, 'nome': name, 'urlImagem': urlImage};

  @override
  String toString() {
    return 'Pessoa{idPessoa: $idPerson, nome: $name}';
  }
}