import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reg1Section extends StatefulWidget {
  const Reg1Section({super.key});

  @override
  State<Reg1Section> createState() => _Reg1SectionState();
}

class _Reg1SectionState extends State<Reg1Section> {
  @override
  Widget build(BuildContext context) {
    final List<String> options = ['Individual Teacher', 'Tutoring Company'];

    return Container(
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 8, right: 8),
            color: Colors.lightGreen,
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 40,
                  color: const Color.fromARGB(255, 18, 118, 70),
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text("Email Verified"),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "I am",
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Container(
              color: const Color.fromARGB(255, 55, 79, 69),
              child: Autocomplete<String>(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  return options.where((String option) {
                    return option
                        .toLowerCase()
                        .contains(textEditingValue.text.toLowerCase());
                  });
                },
                onSelected: (String selection) {
                  print('You selected $selection');
                },
                fieldViewBuilder: (BuildContext context,
                    TextEditingController textEditingController,
                    FocusNode focusNode,
                    VoidCallback onFieldSubmitted) {
                  return TextField(
                    controller: textEditingController,
                    focusNode: focusNode,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  );
                },
                optionsViewBuilder: (BuildContext context,
                    AutocompleteOnSelected<String> onSelected,
                    Iterable<String> options) {
                  return Align(
                    alignment: Alignment.topLeft,
                    child: Material(
                      elevation: 4.0,
                      child: Container(
                        width: MediaQuery.of(context).size.width - 20,
                        child: ListView.builder(
                          padding: const EdgeInsets.all(8.0),
                          itemCount: options.length,
                          itemBuilder: (BuildContext context, int index) {
                            final String option = options.elementAt(index);
                            return GestureDetector(
                              onTap: () {
                                onSelected(option);
                              },
                              child: ListTile(
                                title: Text(option),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
