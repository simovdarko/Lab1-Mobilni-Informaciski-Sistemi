import 'package:flutter/material.dart';
import '../../models/product.dart';
import 'product_card_data.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String img;
  final String description;
  final int price;

  const ProductCard(
      {super.key,
      required this.name,
      required this.img,
      required this.description,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[500],
      child: InkWell(
        enableFeedback: true,
        onTap: () => {
          Navigator.pushNamed(context, "/details",
              arguments: Product(
                  name: name, img: img, description: description, price: price))
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: ProductCardData(
            name: name,
            image: img,
          ),
        ),
      ),
    );
  }
}
