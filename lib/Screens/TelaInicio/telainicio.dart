import 'package:flutter/material.dart';
import 'package:ifood/CustomWidgets/caixasInfo.dart';
import 'package:ifood/CustomWidgets/card.dart';
import 'package:ifood/CustomWidgets/restaurantes.dart';
import 'package:ifood/CustomWidgets/slide.dart';
import 'package:ifood/CustomWidgets/styles.dart';

List<Map<String, dynamic>> itemsTres = [
  {"texto": "Mercado", "imagem": "/mercadofigura.png", "cor": Color(0xFFD04848)},
  {"texto": "Promoções", "imagem": "/promocao.png", "cor": Color(0xFF436850)},
  {"texto": "Bolos", "imagem": "/bolo.png", "cor": Color(0xFF9F70FD)},
  {"texto": "Marmita", "imagem": "/marmita.png", "cor": Color(0xFF6895D2)},
  {"texto": "Sushi", "imagem": "/peixes.png", "cor": Color(0xFF6895D2)},
  {"texto": "Pizza", "imagem": "/pizza.png", "cor": Color(0xFFFDBF60)},
  {"texto": "Carnes", "imagem": "/carnes.png", "cor": Color(0xFF9F70FD)},
];

List<Map<String, String>> items = [
  {"img": "/logobk.png", "text": "Burguer King"},
  {"img": "/logomequi.png", "text": "McDonalds"},
  {"img": "/logocasadopao.png", "text": "Casa do Pão"},
  {"img": "/logodominos.png", "text": "Domino's"},
  {"img": "/logohabibs.png", "text": "Habibs"},
  {"img": "/logosubway.png", "text": "Subway"},
  {"img": "/logosodie.png", "text": "Sodiê Doces"},
];

class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('R. Ari Barroso, 330', style: textNunitoBold(14)),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, color: Colors.red),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                card(185, 80, Colors.deepPurple, "Pet", "/pet.png"),
                const SizedBox(width: 5),
                card(185, 80, Colors.deepPurple, "Mercado", "/mercado.png")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                cardDois(90, 100, Colors.deepPurple[50], "Farmácia",
                    "/farmacia.png"),
                cardDois(
                    90, 100, Colors.deepPurple[50], "Bebidas", "/bebidas.png"),
                cardDois(90, 100, Colors.deepPurple[50], "Sucos", "/sucos.png"),
                cardDois(90, 100, Colors.deepPurple[50], "Pizza", "/pizza.png"),
              ],
            ),
          ),
          const Slide(),
          _buildCardTresCarousel(itemsTres),
          container(items),
        ],
      ),
    );
  }

  Widget _buildCardTresCarousel(List<Map<String, dynamic>> items) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          var item = items[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child:
                cardTres(100, 100, item['cor'], item['texto'], item['imagem']),
          );
        },
      ),
    );
  }
}
