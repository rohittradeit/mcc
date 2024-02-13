import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Dashboard/book4.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/responsive.dart';
import '../../components/background.dart';

class MyBook1 extends StatefulWidget {
  MyBook1(
      {Key? key,
      required this.numberOfCleaners,
      required this.numberOfHours,
      required this.selectedDate})
      : super(key: key);
  final int numberOfCleaners;
  final int numberOfHours;
  DateTime? selectedDate;

  @override
  State<MyBook1> createState() => _HomePageState2();
}

class _HomePageState2 extends State<MyBook1> {
  // The group value
  var _result;
  double totalPrice = 0.0;

  void calculateTotalPrice() {
    // Price per maid per hour
    final double pricePerMaidPerHour = 26.0; // Base price for 1 cleaner and 1 hour

    // Calculate total price
    totalPrice = pricePerMaidPerHour * widget.numberOfCleaners * widget.numberOfHours * (_result ?? 1);
  }
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
              const Text('How many maid do you need ?'),
              RadioListTile(
                  title: const Text('1'),
                  value: 1,
                  groupValue: _result,
                  onChanged: (value) {
                    setState(() {
                      _result = value;
                    });
                  }),
              RadioListTile(
                  title: const Text('2'),
                  value: 2,
                  groupValue: _result,
                  onChanged: (value) {
                    setState(() {
                      _result = value;
                    });
                  }),
              const SizedBox(height: 25),
              ElevatedButton(
                  onPressed:
                    // Proceed to the next step or calculate the final payment
                    _result != null ? (){

                      print("------------?$_result");
                      calculateTotalPrice();
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Book4(totalPrice: totalPrice),));
                      // Do something with the final payment (e.g., navigate to the next screen)
                      print('Total Price: $totalPrice Euro');
                  }: null,
                child: Text('Next '),
              ),
            ],
          )),
    );
  }
}
