import 'package:valans/PertanyaanLansia/Pertanyaan-AMT.dart';

import 'package:flutter/material.dart';
import 'package:valans/PertanyaanLansia/Question-GDS.dart';
import 'package:valans/widgets/tidak_boleh_vaksin_lansia.dart';

class tombolAMT extends StatelessWidget {
  final snackBar = SnackBar(
      content: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("Mohon isi semua pertanyaan terlebih dahulu",
        textAlign: TextAlign.center),
  ));
  bool jawab;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromRGBO(89, 87, 138, 1),
      ),
      child: InkWell(
        onTap: () {
          jawab = true;
          int skor = 0;
          for (int i = 0; i < pilihanAMT.length; i++) {
            if (pilihanAMT[i] == true) {
              skor = skor + 1;
            }
            if (buttonGroupValue[i] == "") {
              jawab = false;
            }
          }
          if (jawab == true) {
            if (skor < 8) {
              tidakBolehVaksinLansia(
                  context, "Abbreviated Mental Test (AMT) Anda");
            } else {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return QuestionGDS();
              }));
            }
          }
          if (jawab == false) {
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        child: Text(
          "Selanjutnya",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
