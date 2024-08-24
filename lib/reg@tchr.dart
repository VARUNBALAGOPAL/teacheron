import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RegtchrSection extends StatefulWidget {
  const RegtchrSection({super.key});

  @override
  State<RegtchrSection> createState() => _RegtchrSectionState();
}

class _RegtchrSectionState extends State<RegtchrSection> {
  @override
  Widget build(BuildContext context) {
    final List<String> options = ['Male', 'Female', 'Transgender'];
    final TextEditingController _dateController = TextEditingController();

    Future<void> _selectDate(BuildContext context) async {
      DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900), // Start date (earliest)
        lastDate: DateTime.now(), // End date (latest)
      );
      if (picked != null) {
        setState(() {
          // Format the selected date and update the TextField
          _dateController.text = DateFormat('dd/MM/yyyy').format(picked);
        });
      }
    }

    return Container(
      height: 600,
      color: const Color.fromARGB(255, 75, 236, 5),
      padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Basic Details",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text("Speciality,Strength or Current Role"),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Gender"),
          const SizedBox(
            height: 5,
          ),
          Autocomplete<String>(
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
          const SizedBox(
            height: 10,
          ),
          Text("Birth Date"),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _dateController,
            decoration: const InputDecoration(
              labelText: 'Date of Birth',
              border: OutlineInputBorder(),
            ),
            onTap: () async {
              FocusScope.of(context)
                  .requestFocus(new FocusNode()); // Close the keyboard
              await _selectDate(context); // Show the date picker
            },
            readOnly: true, // Prevent manual input
          ),
        ],
      ),
    );
  }
}
