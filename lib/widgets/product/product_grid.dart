import 'package:flutter/material.dart';
import '../../models/product.dart';
import 'product_card.dart';

class ProductGrid extends StatefulWidget {
  final List<Product> product;

  const ProductGrid({super.key, required this.product});

  @override
  _ProductGridState createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(18),
      crossAxisCount: 2,
      crossAxisSpacing: 18,
      mainAxisSpacing: 19,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: widget.product
          .map(
            (product) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: ProductCard(
            name: product.name,
            img: product.img,
            description: product.description,
            price: product.price,
          ),
        ),
      ).toList(),
    );
  }
}
