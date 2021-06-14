import 'package:valans/PertanyaanLansia/Pertanyaan-AMT.dart';
import 'package:valans/PertanyaanLansia/tombol-AMT.dart';
import 'package:flutter/material.dart';

class QuestionAMT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Penilaian Abbreviated Mental Test (AMT)",
            style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Expanded(
            child: PertanyaanAMT(),
          ),
          tombolAMT(),
        ],
      ),
    );
  }
}
