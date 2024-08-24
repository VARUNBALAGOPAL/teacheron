import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.book,
                  color: Colors.blue,
                  size: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Store",
                  style: TextStyle(fontSize: 35),
                )
              ],
            ),
            const Center(
              child: Text(
                "Buy and sell notes, lesson plans, worksheets, presentations, research papers, digital activities, and other educational tools.",
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  )),
              child: const Text(
                "Visit Store",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
