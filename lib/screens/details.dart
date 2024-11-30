import 'package:flutter/material.dart';
import 'package:lab1/widgets/details/detail_name.dart';
import 'package:lab1/widgets/details/detail_description.dart';
import 'package:lab1/widgets/details/detail_price.dart';
import 'package:lab1/widgets/details/detail_image.dart';
import '../models/product.dart';


class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments= ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(50),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            DetailImage(image: arguments.img),
            DetailName(name: arguments.name),
            DetailDescription(description: arguments.description),
            DetailPrice(price: arguments.price),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {
          Navigator.pushNamed(context, '/');
        },
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}

