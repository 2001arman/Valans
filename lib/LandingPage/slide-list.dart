import 'package:flutter/material.dart';

class SlideList {
  final String gambar;
  final String judul;
  final String deskripsi;
  final double size;

  SlideList({
    @required this.gambar,
    @required this.judul,
    @required this.deskripsi,
    @required this.size,
  });
}

final slideData = [
  SlideList(
    gambar: "assets/icons/LP1.png",
    judul: "VALANS",
    size: 45,
    deskripsi:
        "Apa itu VALANS? VALANS adalah aplikasi Skrinning Vaksinasi COVID-19 untuk Publik bagi mereka yang berusia sama dengan atau lebih dari 50 tahun.",
  ),
  SlideList(
    gambar: "assets/icons/LP2.png",
    judul: "AYO!",
    size: 45,
    deskripsi:
        "Bantu para dokter untuk melakukan vaksinasi kepada warga setempat dengan melakukan skrinning mandiri.",
  ),
  SlideList(
    gambar: "assets/icons/LP3.png",
    judul: "SELF SCREENING",
    size: 32,
    deskripsi:
        "Melakukan pengecekan secara mandiri dan laporkan kondisi kita kepada komunitas kita.",
  ),
];
