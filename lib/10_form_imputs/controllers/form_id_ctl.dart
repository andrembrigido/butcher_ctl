/// 🧠 O que faz:
/// Classe que controla a geração de IDs únicos para os itens do formulário.
///
/// 📌 Para que serve:
/// Cria um ID visual temporário (quando o usuário clica em "Adicionar outro item")
/// e gera um ID oficial somente ao confirmar com o botão de check.
///
/// 🍽️ Analogia:
/// Pense como uma comanda de restaurante: o garçom escreve a prévia no papel (visual),
/// mas só passa para a cozinha (confirma) quando o pedido é finalizado.
///
/// 🧱 Onde se encaixa:
/// Usado dentro do botão visual `FormIdBtn`, que é parte do formulário `FormAdd`.
class FormIdCls {
  //Contador interno que simula a quantidade de carnes adicionadas
  int _itemCounter = 0;

  // Getter para acessar o valor atual do contador
  int get currentCount => _itemCounter;

  //Gera um ID visual (apenas para exibição) sem salvar no sistema
  String gerarIdVisual() {
    final numeroVisual = (_itemCounter + 1).toString().padLeft(5, '0');

    final agora = DateTime.now();
    final dia = agora.day.toString().padLeft(2, '0');
    final mes = agora.month.toString().padLeft(2, '0');
    final ano = agora.year.toString();

    final idVisual = '#$numeroVisual$dia$mes$ano';
    return idVisual;
  }

  //Gera e confirma o ID oficial, salvando ao clicar no botão de check
  String confirmarESalvarId() {
    _itemCounter++;

    final numeroOficial = _itemCounter.toString().padLeft(5, '0');

    final agora = DateTime.now();
    final dia = agora.day.toString().padLeft(2, '0');
    final mes = agora.month.toString().padLeft(2, '0');
    final ano = agora.year.toString();

    final idFinal = '#$numeroOficial$dia$mes$ano';
    return idFinal;
  }
}
