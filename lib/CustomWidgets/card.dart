import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifood/CustomWidgets/styles.dart';

Container card(double largura, double altura, Color? color, String texto, String img){
  return Container(
    margin: EdgeInsets.fromLTRB(8, 8, 0, 0),
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: color,
    ),
    child: Card(
      color: color,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(texto, style: GoogleFonts.nunitoSans(color: Colors.white),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(img, width: 64, height: 64),
          ),
        ]
      ),
    ),
  );
}

Container cardDois(double largura, double altura, Color? color, String texto, String img){
  return Container(
    margin: EdgeInsets.fromLTRB(8, 8, 0, 0),
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: color,
    ),
    child: Card(
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(img, width: 32, height: 32),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(texto, style: textNunito300(14)),
          ),
        ]
      ),
    ),
  );
}