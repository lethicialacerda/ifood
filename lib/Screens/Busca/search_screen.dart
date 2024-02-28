import 'package:flutter/material.dart';
import 'package:ifood/CustomWidgets/styles.dart';
import 'package:ifood/CustomWidgets/card.dart';

class TelaBusca extends StatelessWidget {
  const TelaBusca({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: TextFormField(
          decoration:  InputDecoration(
            hintText: 'Buscar em todo o aiFood',
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.all(4),
            prefixIcon: const Icon(Icons.search, color: Colors.red),
            filled: true,
            fillColor: Colors.grey[50]
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categorias', style: textNunitoBold(16)),
          ),
          Wrap(
            children: [
              card(185, 80, Color(0xFFD04848), 'Mercado', '/mercado.png'),
              card(185, 80, Color(0xFFFDBF60), 'Farmácia', '/farmacia.png'),
              card(185, 80, Color(0xFF6895D2), 'Bebidas', '/bebidas.png'),
              card(185, 80, Color(0xFF436850), 'Pet', '/pet.png'),
              card(185, 80, Color(0xFFD04848), 'Bolo', '/bolo.png'),
              card(185, 80, Color(0xFF6895D2), 'Sorvete', '/sorvete.png'),
              card(185, 80, Color(0xFF9F70FD), 'Café', '/cafe.png'),
              card(185, 80, Color(0xFFD04848), 'Lanches', '/lanches.png'),
              card(185, 80, Color(0xFFFDBF60), 'Pizza', '/pizza.png'),
              card(185, 80, Color(0xFF9F70FD), 'Espetinho', '/carnes.png'),
              card(185, 80, Color(0xFF436850), 'Hot Dog', '/hotDog.png'),
              card(185, 80, Color(0xFF6895D2), 'Marmita', '/marmita.png'),
              card(185, 80, Color(0xFFFDBF60), 'Suco', '/sucos.png'),
              card(185, 80, Color(0xFFD04848), 'Sopas', '/sopas.png'),
              card(185, 80, Color(0xFF436850), 'Tapioca', '/tapioca.png'),
              card(185, 80, Color(0xFF6895D2), 'Peixes', '/peixes.png'),
            ],
          )
        ],
      ),
    );
  }
}