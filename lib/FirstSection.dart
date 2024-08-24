import 'package:flutter/material.dart';

class FirstSection extends StatelessWidget {
  const FirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("1st_sections/website.jpg"),
              fit: BoxFit.cover)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
            left: 25,
            right: 25,
          ),
          child: Container(
            padding: const EdgeInsets.only(top: 16, bottom: 16, left: 50, right: 50),
            decoration: BoxDecoration(
              color: Colors.white, // Background color for the inner container
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Center(
                  child: Text(
                    'Find online teachers and home tutors for free',
                    style: TextStyle(
                      color: Color.fromARGB(255, 238, 169, 65),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Space between heading and text fields
                Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Subject/Skill',
                        ),
                      ),
                    ),
                    const SizedBox(width: 10), // Space between the text fields
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Location',
                          
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        // Action to perform when the button is pressed
                        print('Search button pressed');
                      },
                      style: ElevatedButton.styleFrom(
                        iconColor: Colors.white,
                        backgroundColor: Colors.purple,
                        padding:
                            const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8.0), // Rectangular shape with slight rounding
                        ),
                      ),
                      icon: const Icon(
                        Icons.search,
                      ),
                      label: const Text(
                        'Search',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
