import 'package:flutter/material.dart';
import 'package:ifood/CustomWidgets/styles.dart';



Widget cardTres(double largura, double altura, Color? color, String texto, String img){
  return Container(
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
            child: Image.asset(img, width: 55, height: 55),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              texto,
              style: textNunito300(14).copyWith(color: Colors.white)
            ),
          ),
        ],
      ),
    ),
  );
}