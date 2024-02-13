import 'package:flutter/material.dart';

import 'Book3.dart';

class MyBook extends StatefulWidget {
  const MyBook({Key? key, required this.numberOfCleaners}) : super(key: key);
  final int numberOfCleaners;

  @override
  State<MyBook> createState() => _MyBookState();
}

class _MyBookState extends State<MyBook> {
  var _result;
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Booking ',style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('How many hours would you like to book?'),
            RadioListTile(
              title: const Text('2 Hours'),
              value: 2,
              groupValue: _result,
              onChanged: (value) {
                setState(() {
                  _result = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('3 Hours'),
              value: 3,
              groupValue: _result,
              onChanged: (value) {
                setState(() {
                  _result = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('4 Hours'),
              value: 4,
              groupValue: _result,
              onChanged: (value) {
                setState(() {
                  _result = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('5 Hours'),
              value: 5,
              groupValue: _result,
              onChanged: (value) {
                setState(() {
                  _result = value;
                });
              },
            ),
            const SizedBox(height: 25),
            TextFormField(
              readOnly: true,
              onTap: () async {
                final DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100),
                );
                if (pickedDate != null && pickedDate != _selectedDate) {
                  setState(() {
                    _selectedDate = pickedDate;
                  });
                }
              },
              decoration: InputDecoration(
                labelText: 'Select Date',
                suffixIcon: Icon(Icons.calendar_today),
              ),
              controller: TextEditingController(
                text: _selectedDate == null
                    ? ''
                    : _selectedDate!.toString().split(' ')[0],
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: _result != null && _selectedDate != null
                  ? () {
                print("numberOfCleaners: ${widget.numberOfCleaners}...$_result");
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyBook1(
                      numberOfCleaners: widget.numberOfCleaners,
                      numberOfHours: _result,
                      selectedDate: _selectedDate ?? DateTime.now(),

                    ),
                  ),
                );
              }
                  : null,
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}