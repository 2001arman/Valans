import 'package:valans/PertanyaanLansia/Pertanyaan-GDS.dart';
import 'package:valans/PertanyaanLansia/tombolGDS.dart';
import 'package:flutter/material.dart';

class QuestionGDS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Penilaian Geriatric Depression Scale \n(GDS)",
            style: TextStyle(color: Colors.black), textAlign: TextAlign.center),
      ),
      body: Column(
        children: [
          Expanded(
            child: PertanyaanGDS(),
          ),
          tombolGDS(),
        ],
      ),
    );
  }
}
