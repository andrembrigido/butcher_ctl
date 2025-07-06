class ItemModel {
  final String id;
  final String type;
  final String name;
  final String freezer;
  final String prateleira;
  final String durabilidade;
  final DateTime fabricacao;
  final DateTime validade;

  ItemModel({
    required this.id,
    required this.type,
    required this.name,
    required this.freezer,
    required this.prateleira,
    required this.durabilidade,
    required this.fabricacao,
    required this.validade,
  });

  // Transforma um Map em um ItemModel
  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      id: json['id'],
      type: json['type'],
      name: json['name'],
      freezer: json['freezer'],
      prateleira: json['prateleira'],
      durabilidade: json['durabilidade'],
      fabricacao: DateTime.parse(json['fabricacao']),
      validade: DateTime.parse(json['validade']),
    );
  }

  // Transforma o objeto em Map (opcional, útil se quiser salvar depois)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'name': name,
      'freezer': freezer,
      'prateleira': prateleira,
      'durabilidade': durabilidade,
      'fabricacao': fabricacao.toIso8601String(),
      'validade': validade.toIso8601String(),
    };
  }
}
