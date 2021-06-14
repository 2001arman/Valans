import 'package:valans/PertanyaanLansia/Pertanyaan-ADL.dart';
import 'package:valans/PertanyaanLansia/tombolADL.dart';
import 'package:flutter/material.dart';

class QuestionADL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Penilaian Activity of Daily Living (ADL)",
            style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Expanded(
            child: PertanyaanADL(),
          ),
          tombolADL(),
        ],
      ),
    );
  }
}
