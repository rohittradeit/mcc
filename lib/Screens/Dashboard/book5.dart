import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Dashboard/payment_screen.dart';


class Book5 extends StatefulWidget {
  Book5({Key? key, required this.totalPrice}) : super(key: key);
  var totalPrice;

  @override
  State<Book5> createState() => _Book5State();
}

class _Book5State extends State<Book5> {
  var _result;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _locationController = TextEditingController();

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
            const Text('Please enter your details?'),
            const SizedBox(height: 10),
            const SizedBox(height: 25),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email or Phone',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 25),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: _locationController,
                    decoration: const InputDecoration(
                      labelText: 'Enter Location',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: _locationController.text.isNotEmpty  && _emailController.text.isNotEmpty ? () {
                print("total Price______________${ widget.totalPrice}");
                Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentScreen(totalPrice: widget.totalPrice,email: _emailController.text,location: _locationController.text,),));
              } : null,
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
