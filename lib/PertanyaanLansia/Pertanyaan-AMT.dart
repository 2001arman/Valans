// import 'package:vablik/widgets/penjelasanPenyakit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PertanyaanAMT extends StatefulWidget {
  final String soal;

  const PertanyaanAMT({
    Key key,
    this.soal,
  }) : super(key: key);

  @override
  _PertanyaanAMTState createState() => _PertanyaanAMTState();
}

class _PertanyaanAMTState extends State<PertanyaanAMT> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dataPertanyaanAMT.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              padding: EdgeInsets.all(10),
              child: Text(
                "*Tanyakan soal berikut kepada lansia, jika lansia menjawab dengan benar maka pilih 'iya' dan pilih 'tidak' jika salah.",
                style: TextStyle(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            );
          } else
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
                        Text(
                          dataPertanyaanAMT[index],
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Radio(
                          value: "iya",
                          groupValue: buttonGroupValue[index - 1],
                          activeColor: Color.fromRGBO(89, 87, 138, 1),
                          onChanged: (val) {
                            buttonGroupValue[index - 1] = val;
                            setState(() {
                              pilihanAMT[index - 1] = true;
                            });
                          }),
                      Text("Benar"),
                      Spacer(),
                      Radio(
                          value: "tidak",
                          groupValue: buttonGroupValue[index - 1],
                          activeColor: Color.fromRGBO(89, 87, 138, 1),
                          onChanged: (val) {
                            buttonGroupValue[index - 1] = val;
                            setState(() {
                              pilihanAMT[index - 1] = false;
                            });
                          }),
                      Text("Salah"),
                      Spacer()
                    ],
                  ),
                  SizedBox(height: 8),
                ],
              ),
            );
        });
  }
}

List<String> buttonGroupValue = ["", "", "", "", "", "", "", "", "", ""];

List<String> dataPertanyaanAMT = [
  "",
  "Berapakah umur Anda?",
  "Jam berapa sekarang?",
  "Dimana alamat rumah Anda?",
  "Tahun berapa sekarang?",
  "Saat ini kita sedang berada dimana?",
  "Mampukah pasien mengenali dokter atau perawat?",
  "Tahun berapa Indonesia merdeka?",
  "Siapa nama presiden RI sekarang?",
  "Tahun berapa Anda lahir?",
  "Menghitung mundur dari 20 sampai 1",
];

List<bool> pilihanAMT = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false
];
