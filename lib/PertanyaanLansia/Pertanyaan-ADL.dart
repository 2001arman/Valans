import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:valans/widgets/penjelasanPenyakit.dart';

class PertanyaanADL extends StatefulWidget {
  final String soal;

  const PertanyaanADL({
    Key key,
    this.soal,
  }) : super(key: key);

  @override
  _PertanyaanADLState createState() => _PertanyaanADLState();
}

class _PertanyaanADLState extends State<PertanyaanADL> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dataPertanyaanADL.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 4,
                    color: Color(0xFF4056C6).withOpacity(.35),
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: dataPertanyaanADL[index],
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            children: [
                              TextSpan(
                                text: kendalaADL[index],
                                style: TextStyle(
                                    color: Color.fromRGBO(89, 87, 138, 1)),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Penjelasan(context, "",
                                        penjelasanPertanyaanADL[index]);
                                  },
                              ),
                              TextSpan(
                                  text: "?",
                                  style: TextStyle(color: Colors.black))
                            ]),
                      ),
                    ],
                  ),
                ),
                if (index == 0)
                  radioButton3(
                      index,
                      "Tidak terkendali atau tidak teratur",
                      "Kadang-kadang tidak terkendali",
                      "Terkendali dan teratur"),
                if (index == 1)
                  radioButton3(index, "Tak terkendali atau pakai keteter",
                      "Kadang-kadang tak terkendali", "Mandiri"),
                if (index == 2)
                  radioButton2(
                      index, "Butuh pertolongan orang lain", "Mandiri"),
                if (index == 3)
                  radioButton3(index, "Tergantung pertolongan orang lain",
                      "Perlu pertolongan pada beberapa kegiatan", "Mandiri"),
                if (index == 4)
                  radioButton3(index, "Tidak mampu",
                      "Perlu ditolong memotong makanan", "Mandiri"),
                if (index == 5)
                  radioButton4(index, "Tidak mampu", "Perlu bantuan 2 orang",
                      "Perlu bantuan 1 orang", "Mandiri"),
                if (index == 6)
                  radioButton4(index, "Tidak mampi", "Bisa dengan kursi roda",
                      "Berjalan dengan bantuan 1 orang", "Mandiri"),
                if (index == 7)
                  radioButton3(index, "Tergantung orang lain",
                      "Sebagian dibantu", "Mandiri"),
                if (index == 8)
                  radioButton3(
                      index, "Tidak mampu", "Butuh pertolongan", "Mandiri"),
                if (index == 9)
                  radioButton2(index, "Tergantung orang lain", "Mandiri"),
                SizedBox(height: 14),
              ],
            ),
          );
        });
  }

  Column radioButton2(int index, String satu, String dua) {
    return Column(
      children: [
        SizedBox(width: 20),
        Row(
          children: [
            SizedBox(width: 15),
            Radio(
                value: "0",
                groupValue: buttonGroupValue[index],
                activeColor: Color.fromRGBO(89, 87, 138, 1),
                onChanged: (val) {
                  buttonGroupValue[index] = val;
                  setState(() {});
                }),
            Text(satu, style: TextStyle(fontSize: 16)),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 15),
            Radio(
                value: "1",
                groupValue: buttonGroupValue[index],
                activeColor: Color.fromRGBO(89, 87, 138, 1),
                onChanged: (val) {
                  buttonGroupValue[index] = val;
                  setState(() {});
                }),
            Text(dua, style: TextStyle(fontSize: 16)),
          ],
        ),
      ],
    );
  }

  Column radioButton3(int index, String satu, String dua, String tiga) {
    return Column(
      children: [
        SizedBox(width: 20),
        Row(
          children: [
            SizedBox(width: 15),
            Radio(
                value: "0",
                groupValue: buttonGroupValue[index],
                activeColor: Color.fromRGBO(89, 87, 138, 1),
                onChanged: (val) {
                  buttonGroupValue[index] = val;
                  setState(() {});
                }),
            Text(satu, style: TextStyle(fontSize: 16)),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 15),
            Radio(
                value: "1",
                groupValue: buttonGroupValue[index],
                activeColor: Color.fromRGBO(89, 87, 138, 1),
                onChanged: (val) {
                  buttonGroupValue[index] = val;
                  setState(() {});
                }),
            Text(dua, style: TextStyle(fontSize: 16)),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 15),
            Radio(
                value: "2",
                groupValue: buttonGroupValue[index],
                activeColor: Color.fromRGBO(89, 87, 138, 1),
                onChanged: (val) {
                  buttonGroupValue[index] = val;
                  setState(() {});
                }),
            Text(tiga, style: TextStyle(fontSize: 16)),
          ],
        ),
      ],
    );
  }

  Column radioButton4(
      int index, String satu, String dua, String tiga, String empat) {
    return Column(
      children: [
        SizedBox(width: 20),
        Row(
          children: [
            SizedBox(width: 15),
            Radio(
                value: "0",
                groupValue: buttonGroupValue[index],
                activeColor: Color.fromRGBO(89, 87, 138, 1),
                onChanged: (val) {
                  buttonGroupValue[index] = val;
                  setState(() {});
                }),
            Text(satu, style: TextStyle(fontSize: 16)),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 15),
            Radio(
                value: "1",
                groupValue: buttonGroupValue[index],
                activeColor: Color.fromRGBO(89, 87, 138, 1),
                onChanged: (val) {
                  buttonGroupValue[index] = val;
                  setState(() {});
                }),
            Text(dua, style: TextStyle(fontSize: 16)),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 15),
            Radio(
                value: "2",
                groupValue: buttonGroupValue[index],
                activeColor: Color.fromRGBO(89, 87, 138, 1),
                onChanged: (val) {
                  buttonGroupValue[index] = val;
                  setState(() {});
                }),
            Text(tiga, style: TextStyle(fontSize: 16)),
          ],
        ),
        Row(
          children: [
            SizedBox(width: 15),
            Radio(
                value: "3",
                groupValue: buttonGroupValue[index],
                activeColor: Color.fromRGBO(89, 87, 138, 1),
                onChanged: (val) {
                  buttonGroupValue[index] = val;
                  setState(() {});
                }),
            Text(empat, style: TextStyle(fontSize: 16)),
          ],
        ),
      ],
    );
  }
}

List<String> buttonGroupValue = [
  "9",
  "9",
  "9",
  "9",
  "9",
  "9",
  "9",
  "9",
  "9",
  "9"
];

List<String> dataPertanyaanADL = [
  "Apakah Anda bisa mengendalikan rangsang ",
  "Apakah Anda bisa mengendalikan rangsang ",
  "Apakah Anda bisa ",
  "Apakah Anda bisa ",
  "Apakah Anda bisa ",
  "Apakah Anda bisa ",
  "Apakah Anda bisa ",
  "Apakah Anda bisa ",
  "Apakah Anda bisa ",
  "Apakah Anda bisa ",
];

List<String> kendalaADL = [
  "BAB",
  "BAK",
  "Membersihkan diri",
  "Menggunakan WC",
  "Makan minum",
  "Bergerak dari kursi rode ke tempat tidur dan sebaliknya",
  "Berjalan di tempat rata",
  "Berpakaian",
  "Naik Turun Tangga",
  "Mandi",
];

List<String> penjelasanPertanyaanADL = [
  "Buang Air Besar",
  "Buang Air Kecil",
  "Mencuci wajah, menyikat rambut, mencukur kumis dan sikat gigi",
  "Keluar masuk WC, melepas/memakai celana, cebok dan menyiram",
  "Jika makan, harus berupa potongan, dianggap dibantu",
  "Termasuk duduk di tempat tidur",
  "Atau jika tidak bisa berjalan, menjalankan kursi roda",
  "Termasuk memasang tali sepatu dan mengencangkan sabuk",
  "Naik dan turun tangga",
  "Mandi"
];
