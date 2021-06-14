import 'package:valans/PertanyaanLansia/Pertanyaan-ADL.dart';
// import 'package:valans/Pertanyaan/question_2.dart';
import 'package:flutter/material.dart';
import 'package:valans/PertanyaanLansia/Question-AMT.dart';
import 'package:valans/widgets/tidak_boleh_vaksin_lansia.dart';
// import '../widgets/tidak_boleh_vaksin.dart';

class tombolADL extends StatelessWidget {
  final snackBar = SnackBar(
      content: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("Mohon isi semua pertanyaan terlebih dahulu",
        textAlign: TextAlign.center),
  ));
  bool boleh;
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
          boleh = false;
          jawab = true;
          int total = 0;
          for (int i = 0; i < dataPertanyaanADL.length; i++) {
            total = total + int.parse(buttonGroupValue[i]);
            if (buttonGroupValue[i] == "9") {
              jawab = false;
            }
          }
          if (jawab == true) {
            if (total > 11) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return QuestionAMT();
              }));
            }
            if (total < 12) {
              tidakBolehVaksinLansia(context, "Activity of Daily Living anda.");
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
