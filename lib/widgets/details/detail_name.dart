import 'package:flutter/material.dart';

class DetailName extends StatelessWidget {
  final String name;

  const DetailName({super.key, required this.name});

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
          name,
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
