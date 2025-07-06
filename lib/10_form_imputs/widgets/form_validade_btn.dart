import 'package:butcher_ctl/00_basic/imports.dart';
import 'package:intl/intl.dart';

class FormValidadeBtn extends StatelessWidget {
  final FormValidadeCtl controller;

  const FormValidadeBtn({super.key, required this.controller});

  // Formata a data no padrão brasileiro
  String formatarData(DateTime data) {
    return DateFormat('dd/MM/yyyy').format(data);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /* █████████████████████ TEXTO AREA █████████████████████  */
          Container(
            height: 20,
            width: 160,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: ColorsApp.greenNormal,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'DATA DE VALIDADE',
              style: TextStyle(
                color: ColorsApp.whiteNormal,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 10),

          /* █████████████████████ DATA AREA █████████████████████  */
          ValueListenableBuilder<DateTime?>(
            valueListenable: controller.dataSelecionada,
            builder: (context, data, _) {
              return GestureDetector(
                onTap: () async {
                  final DateTime? selecionada = await showDatePicker(
                    context: context,
                    initialDate: data ?? DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2030),
                    helpText: 'Selecione a data de validade',
                    cancelText: 'Cancelar',
                    confirmText: 'Confirmar',
                  );
                  if (selecionada != null) {
                    controller.definirData(selecionada);
                  }
                },
                child: Container(
                  height: 35,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: ColorsApp.grayLight,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: ColorsApp.greenNormal, width: 2),
                  ),
                  child: Text(
                    data != null ? formatarData(data) : 'Selecionar data',
                    style: TextStyle(
                      color: ColorsApp.blackNormal,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
