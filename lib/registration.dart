import 'package:flutter/material.dart';

class RegistrationSection extends StatefulWidget {
  const RegistrationSection({super.key});

  @override
  State<RegistrationSection> createState() => _RegistrationSectionState();
}

class _RegistrationSectionState extends State<RegistrationSection> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    final List<String> options = [
      'Teacher',
      'Student/Parent',
      'Store User(buy/sell items)'
    ];
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
      height: 500,
      color: Colors.yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Name",
          ),
          Container(
              color: Colors.cyan,
              child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Name"))),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Email",
          ),
          Container(
            color: const Color.fromARGB(255, 14, 216, 132),
            child: const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Email"),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Password",
          ),
          Container(
            color: const Color.fromARGB(255, 243, 80, 31),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Password", border: OutlineInputBorder()),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Iam a",
          ),
          Container(
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
                      width: MediaQuery.of(context).size.width - 32,
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
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Checkbox(
                activeColor: Colors.white,
                checkColor: Colors.grey,
                value: isChecked,
                onChanged: (val) {
                  setState(() {
                    isChecked = val;
                  });
                },
              ),
              const SizedBox(
                width: 10,
              ),
              const Text("This is my first and only account with teacheron.com")
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.blue,
              ),
              child: const Text(
                "Register",
                style: TextStyle(color: Colors.white),
              ),
              ),
        ],
      ),
    );
  }
}
