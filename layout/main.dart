// lib/main.dart

import 'package:flutter/material.dart';
import 'components/custom_button.dart';
import 'components/product_card.dart';
import 'components/product_rating.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produto'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Card de produto
            ProductCard(
              imageUrl: 'https://via.placeholder.com/400x300',
              name: 'Tênis de Corrida XYZ',
              description: 'Tênis confortável para corrida e atividades físicas.',
              price: 129.99,
            ),
            SizedBox(height: 20),

            // Avaliação do produto
            ProductRating(rating: 4.5),
            SizedBox(height: 20),

            // Botão de compra
            CustomButton(
              buttonText: 'Comprar',
              onPressed: () {
                // Ação de compra
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Produto adicionado ao carrinho!')));
              },
            ),
          ],
        ),
      ),
    );
  }
}
