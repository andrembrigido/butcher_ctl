/*
  🎨 O que faz:
  Define uma paleta de cores centralizada e reutilizável para todo o aplicativo.

  📌 Para que serve:
  - Evita repetir códigos de cor manualmente
  - Facilita a troca de cores e o uso de temas claros/escuros
  - Organiza visualmente os papéis das cores (interface, textos, containers, alertas etc.)

  🛠️ Como usar:
  Importe este arquivo e use as cores com `AppColors`.

  Exemplo:
    import 'package:clecio_mercearia/theme/app_colors.dart';
    Container(
      color: AppColors.blackHard,
    );
*/

import 'package:flutter/material.dart';

class ColorsApp {
  static const Color transparent = Colors.transparent;
  // ◼️ Tons de cinza para UI
  static const Color grayPure = Color.fromARGB(255, 220, 220, 220);
  static const Color grayLight = Color.fromARGB(255, 245, 245, 245);
  static const Color grayNormal = Color.fromARGB(255, 230, 230, 230);
  static const Color grayHard = Color.fromARGB(255, 200, 200, 200);

  // ⬛ Tons de preto
  static const Color blackPure = Color.fromARGB(255, 0, 0, 0);
  static const Color blackLight = Color.fromARGB(255, 70, 70, 70);
  static const Color blackNormal = Color.fromARGB(255, 50, 50, 50);
  static const Color blackHard = Color.fromARGB(255, 30, 30, 30);

  // ⬜ Tons de branco
  static const Color whitePure = Color.fromARGB(255, 255, 255, 255);
  static const Color whiteLight = Color.fromARGB(255, 255, 255, 255);
  static const Color whiteNormal = Color.fromARGB(255, 240, 240, 240);
  static const Color whiteHard = Color.fromARGB(255, 220, 220, 220);

  // 🟥 Tons de vermelho
  static const Color redPure = Color.fromARGB(255, 255, 0, 0);
  static const Color redLight = Color.fromARGB(255, 255, 200, 200);
  static const Color redNormal = Color.fromARGB(255, 220, 80, 80);
  static const Color redHard = Color.fromARGB(255, 150, 0, 0);

  // 🟨 Tons de amarelo
  static const Color yellowPure = Color.fromARGB(255, 255, 215, 0);
  static const Color yellowLight = Color.fromARGB(255, 255, 255, 200);
  static const Color yellowNormal = Color.fromARGB(255, 249, 206, 66);
  static const Color yellowHard = Color.fromARGB(255, 200, 160, 0);

  // 🟩 Tons de verde
  static const Color greenPure = Color.fromARGB(255, 0, 200, 0);
  static const Color greenLight = Color.fromARGB(255, 200, 255, 200);
  static const Color greenNormal = Color.fromARGB(255, 100, 200, 100);
  static const Color greenHard = Color.fromARGB(255, 0, 128, 0);
}
