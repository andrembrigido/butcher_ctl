import 'package:butcher_ctl/01_themes/colors_palette.dart';
import 'package:flutter/material.dart';

class ItemsCtn extends StatefulWidget {
  const ItemsCtn({super.key});

  @override
  State<ItemsCtn> createState() => _ItemsCtnState();
}

class _ItemsCtnState extends State<ItemsCtn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: ColorsApp.greenNormal, width: 4),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // Coluna fixa com 50% de largura (vermelho + verde)
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 20,
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                      Container(
                        height: 26,
                        width: MediaQuery.of(context).size.width * 0.5,
                        color: Colors.green,
                      ),
                    ],
                  ),

                  // Container azul se adapta para não quebrar o layout
                  Flexible(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 46,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              /* █████████████████████ LINHA 3 █████████████████████ */
              Container(
                height: 26,
                decoration: BoxDecoration(color: ColorsApp.yellowNormal),
              ),
              /* █████████████████████ LINHA 4 █████████████████████ */
              Container(
                height: 26,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
