import 'package:flutter/material.dart';

Future<dynamic> tidakBolehVaksinLansia(BuildContext context, String gejala) {
  return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Color.fromRGBO(180, 132, 3, 1),
          actions: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  // margin: EdgeInsets.only(right: 30, left: 30),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/Gejala.png")),
                      color: Color.fromRGBO(180, 132, 3, 1),
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(height: 10),
                Text(
                  "Anda Belum Boleh Divaksin",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Konsultasikan dulu dengan dokter mengenai " + gejala,
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Selesai",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(89, 87, 138, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ],
        );
      });
}
