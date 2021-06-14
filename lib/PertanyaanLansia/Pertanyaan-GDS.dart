import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PertanyaanGDS extends StatefulWidget {
  final String soal;

  const PertanyaanGDS({
    Key key,
    this.soal,
  }) : super(key: key);

  @override
  _PertanyaanGDSState createState() => _PertanyaanGDSState();
}

class _PertanyaanGDSState extends State<PertanyaanGDS> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dataPertanyaanGDS.length,
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
                      Text(
                        dataPertanyaanGDS[index],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Radio(
                        value: "iya",
                        groupValue: buttonGroupValueGDS[index],
                        activeColor: Color.fromRGBO(89, 87, 138, 1),
                        onChanged: (val) {
                          buttonGroupValueGDS[index] = val;
                          setState(() {
                            pilihanGDS[index] = true;
                          });
                        }),
                    Text("Ya"),
                    Spacer(),
                    Radio(
                        value: "tidak",
                        groupValue: buttonGroupValueGDS[index],
                        activeColor: Color.fromRGBO(89, 87, 138, 1),
                        onChanged: (val) {
                          buttonGroupValueGDS[index] = val;
                          setState(() {
                            pilihanGDS[index] = false;
                          });
                        }),
                    Text("Tidak"),
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

List<String> buttonGroupValueGDS = [
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  ""
];

List<String> dataPertanyaanGDS = [
  "Apakah Anda pada dasarnya puas dengan kehidupan anda?",
  "Apakah Anda sudah meninggalkan banyak kegiatan dan minat atau kesenangan anda?",
  "Apakah Anda merasa kehidupan anda hampa?",
  "Apakah Anda sering merasa bosan?",
  "Apakah Anda mempunyai semangat baik setiap saat?",
  "Apakah Anda takut sesuatu yang buruk akan terjadi pada anda?",
  "Apakah Anda merasa bahagia pada sebagian besar hidup anda?",
  "Apakah Anda sering merasa tidak berdaya?",
  "Apakah Anda lebih senang tinggal di rumah daripada pergi ke luar dan mengerjakan sesuatu hal yang baru?",
  "Apakah Anda merasa mempunyai banyak masalah dengan daya ingat anda dibandingkan kebanyakan orang?",
  "Apakah Anda pikir hidup anda sekarang ini menyenangkan?",
  "Apakah Anda merasa tidak berharga seperti perasaan anda saat kini?",
  "Apakah Anda merasa penuh semangat?",
  "Apakah Anda merasa bahwa keadaan anda tidak ada harapan?",
  "Apakah Anda pikir bahwa orang lain lebih baik keadaannya dari anda?",
];

List<bool> pilihanGDS = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];
