import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Dashboard/book5.dart';


class Book4 extends StatefulWidget {
  Book4({Key? key, required this.totalPrice}) : super(key: key);
  var totalPrice;

  @override
  State<Book4> createState() => _Book4State();
}

class _Book4State extends State<Book4> {
  var _result;
  var _note;

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
            const Text('Do we need to bring cleaning products?'),
            const SizedBox(height: 10),

            RadioListTile(
              title: const Text('Yes'),
              value: 1,
              groupValue: _result,
              onChanged: (value) {
                setState(() {
                  _result = value;
                });
              },
            ),
            RadioListTile(
              title: const Text('No'),
              value: 0,
              groupValue: _result,
              onChanged: (value) {
                setState(() {
                  _result = value;
                });
              },
            ),
            const SizedBox(height: 25),
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Leave any Notes',
                  border: OutlineInputBorder(),
                ),
                maxLines: null, // Allows the TextField to expand infinitely
                onChanged: (value) {
                  setState(() {
                    _note = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: _result != null && _note != null ? () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Book5(totalPrice: widget.totalPrice),));
              } : null,
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
