
import 'package:flutter/material.dart';

import 'Book2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // The group value
  var _result;
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
            const Text('How many cleaning specialists do you need?'),
            RadioListTile(
              title: const Text('1 Cleaner'),
              value: 1,
              groupValue: _result,
              onChanged: (value) {
                setState(() {
                  _result = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('2 Cleaners'),
              value: 2,
              groupValue: _result,
              onChanged: (value) {
                setState(() {
                  _result = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('3 Cleaners'),
              value: 3,
              groupValue: _result,
              onChanged: (value) {
                setState(() {
                  _result = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('4 Cleaners'),
              value: 4,
              groupValue: _result,
              onChanged: (value) {
                setState(() {
                  _result = value;
                });
              },
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: _result != null
                  ? () {
                print(_result);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MyBook(
                      numberOfCleaners: _result,
                    )));
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
