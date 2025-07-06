/*
PASSO 2

  🧠 O que faz:
  Aqui a gente cria o “molde” de como cada produto congelado deve ser.
  Esse molde serve para garantir que todos os itens tenham as mesmas informações.

  📌 Para que serve:
  - Pra dizer o que todo produto congelado precisa ter (como nome, validade, local...)
  - Pra que o app possa entender e organizar os dados certinhos
  - Pra que a gente use sempre o mesmo padrão ao lidar com esses produtos

  🍰 ANALOGIA:
  Imagine que você vai fazer bolos. Antes de começar, você precisa de uma forma.
  Essa forma define o formato do seu bolo. Aqui é a mesma coisa:
  a gente criou a forma que vai dar o formato para todos os “bolos congelados”.
*/

class ItemModel {
  // final significa que o valor não pode ser mudado depois que for criado
  final String id; // Código único pra identificar o item
  final String type; // Tipo do item
  final String name; // Nome do produto (ex: Acém, Picanha)
  final String freezer; // Qual freezer está (ex: A, B)
  final String prateleira; // Qual prateleira dentro do freezer
  final String durabilidade; //Qual a durabilidade media da carne congelada
  final DateTime fabricacao; // Data em que foi congelado
  final DateTime validade; // Data em que vence

  // Aqui a gente obriga que tudo seja informado ao criar o produto
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
}
