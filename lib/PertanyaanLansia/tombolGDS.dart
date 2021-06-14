import 'package:valans/PertanyaanLansia/Pertanyaan-GDS.dart';
import 'package:flutter/material.dart';
import 'package:valans/PertanyaanPublik/question_1.dart';
import 'package:valans/widgets/tidak_boleh_vaksin_lansia.dart';

class tombolGDS extends StatelessWidget {
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
          int skor = 0;
          for (int i = 0; i < dataPertanyaanGDS.length; i++) {
            if (buttonGroupValueGDS[i] == "") {
              jawab = false;
            }
            if (i == 0 && pilihanGDS[i] == false) {
              skor = skor + 1;
            }
            if (i == 1 && pilihanGDS[i] == true) {
              skor = skor + 1;
            }
            if (i == 2 && pilihanGDS[i] == true) {
              skor = skor + 1;
            }
            if (i == 3 && pilihanGDS[i] == true) {
              skor = skor + 1;
            }
            if (i == 4 && pilihanGDS[i] == false) {
              skor = skor + 1;
            }
            if (i == 5 && pilihanGDS[i] == true) {
              skor = skor + 1;
            }
            if (i == 6 && pilihanGDS[i] == false) {
              skor = skor + 1;
            }
            if (i == 7 && pilihanGDS[i] == true) {
              skor = skor + 1;
            }
            if (i == 8 && pilihanGDS[i] == true) {
              skor = skor + 1;
            }
            if (i == 9 && pilihanGDS[i] == true) {
              skor = skor + 1;
            }
            if (i == 10 && pilihanGDS[i] == false) {
              skor = skor + 1;
            }
            if (i == 11 && pilihanGDS[i] == true) {
              skor = skor + 1;
            }
            if (i == 12 && pilihanGDS[i] == false) {
              skor = skor + 1;
            }
            if (i == 13 && pilihanGDS[i] == true) {
              skor = skor + 1;
            }
            if (i == 14 && pilihanGDS[i] == true) {
              skor = skor + 1;
            }
          }
          if (jawab == true) {
            if (skor > 4) {
              tidakBolehVaksinLansia(
                  context, "Geriatric Depression Scale (GDS) anda.");
            } else {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return Question1();
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
