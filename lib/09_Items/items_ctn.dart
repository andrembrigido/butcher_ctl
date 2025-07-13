import 'package:butcher_ctl/00_/imports.dart';

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
              /* █████████████████████ LINHA 1 █████████████████████ */
              Row(
                children: [
                  Column(
                    children: [
                      /* █████████████████████ ID █████████████████████ */
                      Container(
                        height: 20,
                        width: MediaQuery.of(context).size.width * 0.5,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.fromLTRB(15, 3, 20, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                          ),
                        ),
                        child: Text(
                          'ID - 00000126052024',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            color: ColorsApp.blackNormal,
                          ),
                        ),
                      ),
                      /* █████████████████████ TYPE █████████████████████ */
                      Container(
                        height: 26,
                        width: MediaQuery.of(context).size.width * 0.5,
                        padding: EdgeInsets.fromLTRB(13, 0, 15, 0),
                        child: Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: ColorsApp.greenNormal,
                                borderRadius: BorderRadius.circular(4),
                              ),

                              child: Icon(
                                FontAwesomeIcons.cow,
                                size: 15,
                                color: ColorsApp.whiteNormal,
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Text(
                              'Costela',
                              style: TextStyle(
                                fontSize: 15,
                                color: ColorsApp.blackHard,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  /* █████████████████████ DURABILIDADE █████████████████████ */
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(left: 15),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          width: 120,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: ColorsApp.greenNormal,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            '30 Dias',
                            style: TextStyle(
                              fontSize: 25,
                              color: ColorsApp.whiteNormal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              /* █████████████████████ LINHA 2 █████████████████████ */
              Container(
                height: 26,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /* █████████████████████ FREZZER █████████████████████ */
                    Container(
                      height: 20,
                      width: 130,
                      margin: EdgeInsets.fromLTRB(13, 0, 0, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: ColorsApp.greenNormal,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Icon(
                                FontAwesomeIcons.snowflake,
                                size: 15,
                                color: ColorsApp.whiteNormal,
                              ),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                            Text(
                              'Frezzer 5',
                              style: TextStyle(
                                color: ColorsApp.blackHard,
                                decoration: TextDecoration.none,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /* █████████████████████ PRATELEIRA █████████████████████ */
                    Container(
                      height: 20,
                      width: 130,
                      margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              color: ColorsApp.greenNormal,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Icon(
                              FontAwesomeIcons.boxesStacked,
                              size: 15,
                              color: ColorsApp.whiteNormal,
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                          Text(
                            'Prateleira 2',
                            style: TextStyle(
                              color: ColorsApp.blackHard,
                              decoration: TextDecoration.none,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              /* █████████████████████ LINHA 3 █████████████████████ */
              Container(
                height: 26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /* █████████████████████ FABRICACAO █████████████████████ */
                    Container(
                      height: 20,
                      width: 130,
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(13, 0, 0, 0),
                      decoration: BoxDecoration(
                        color: ColorsApp.greenNormal,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'Fab - 26/07/2025',
                        style: TextStyle(
                          fontSize: 13,
                          color: ColorsApp.whiteNormal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    /* █████████████████████ VALIDADE █████████████████████ */
                    Container(
                      height: 20,
                      width: 130,
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(13, 0, 8, 0),
                      decoration: BoxDecoration(
                        color: ColorsApp.greenNormal,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'Val - 12/03/2026',
                        style: TextStyle(
                          fontSize: 13,
                          color: ColorsApp.whiteNormal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
