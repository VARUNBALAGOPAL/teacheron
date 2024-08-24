import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SixthSection extends StatelessWidget {
  const SixthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("1st_sections/wm.jpg"), fit: BoxFit.contain),
      ),
      padding: EdgeInsets.all(30),
      height: 400,
      child: const Column(
        children: [
          Text(
            "Teachers from over 170 countries",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
