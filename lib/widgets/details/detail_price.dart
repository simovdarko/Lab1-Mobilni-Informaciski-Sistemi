import 'package:flutter/material.dart';

class DetailPrice extends StatelessWidget {
  final int price;

  const DetailPrice({super.key, required this.price});

    @override
    Widget build(BuildContext context) {
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.grey[700],
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Price: \$${price}',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      );
  }
}
