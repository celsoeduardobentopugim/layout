// lib/components/product_rating.dart

import 'package:flutter/material.dart';

class ProductRating extends StatelessWidget {
  final double rating;

  const ProductRating({required this.rating, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int fullStars = rating.floor();
    bool hasHalfStar = (rating - fullStars) >= 0.5;
    int emptyStars = 5 - fullStars - (hasHalfStar ? 1 : 0);

    return Row(
      children: [
        for (int i = 0; i < fullStars; i++) Icon(Icons.star, color: Colors.orange),
        if (hasHalfStar) Icon(Icons.star_half, color: Colors.orange),
        for (int i = 0; i < emptyStars; i++) Icon(Icons.star_border, color: Colors.orange),
        SizedBox(width: 8),
        Text(
          '$rating',
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
        ),
      ],
    );
  }
}
