import 'package:flutter/material.dart';

class DetailDescription extends StatelessWidget {
  final String description;

  const DetailDescription({super.key, required this.description});

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
          description,
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}