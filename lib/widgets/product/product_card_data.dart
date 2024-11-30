import 'package:flutter/material.dart';

class ProductCardData extends StatelessWidget {
  final String name;
  final String image;

  const ProductCardData({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Expanded(child: Image.network(image, fit: BoxFit.contain, alignment: Alignment.center,),
          ),
          const Divider(
              color: Colors.grey),
          Text("${name[0].toUpperCase()}${name.substring(1)}",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
