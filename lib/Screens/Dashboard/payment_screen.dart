import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PaymentScreen extends StatefulWidget {
  PaymentScreen({Key? key, required this.totalPrice,required this.email,required this.location}) : super(key: key);
  final double totalPrice;
String email;
var location;
  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String? _selectedPaymentMethod;



  Future<void> _initiateMasterCardPayment() async {
  }

  Future<void> _initiateVisaPayment() async {
    // Implement Visa payment logic here
  }

  Future<void> _initiatePayPalPayment() async {
    try {


      // Confirm payment intent with the created PayPal payment method
      final paymentIntent = await Stripe.instance.confirmPayment(
        paymentIntentClientSecret: 'YOUR_PAYMENT_INTENT_CLIENT_SECRET',
        data: PaymentMethodParams.payPal(paymentMethodData: PaymentMethodData(billingDetails: BillingDetails(email: widget.email))
        ),
      );

      // If payment is successful, handle it here
      if (paymentIntent.status == PaymentIntentsStatus.Succeeded) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Payment is successful. Your order is Confirmed"),));
      } else {
        // Payment failed
      }
    } catch (e) {
      // Handle errors
      print('Error: $e');
    }
  }


  Future<void> _initiateCreditDebitCardPayment() async {
    // Implement Credit/Debit Card payment logic here
  }

  Future<void> _initiatePayment() async {
    switch (_selectedPaymentMethod) {
      case 'MasterCard':
        await _initiateMasterCardPayment();
        break;
      case 'Visa':
        await _initiateVisaPayment();
        break;
      case 'PayPal':
        await _initiatePayPalPayment();
        break;
      case 'CreditDebitCard':
        await _initiateCreditDebitCardPayment();
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('Booking',style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Price: ${widget.totalPrice} Euro',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text('Select Payment Method:'),
            RadioListTile(
              title: const Text('Master Card'),
              value: 'MasterCard',
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value as String?;
                });
              },
            ),
            RadioListTile(
              title: const Text('Visa'),
              value: 'Visa',
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value as String?;
                });
              },
            ),
            RadioListTile(
              title: const Text('PayPal'),
              value: 'PayPal',
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value as String?;
                });
              },
            ),
            RadioListTile(
              title: const Text('Credit / Debit Card'),
              value: 'CreditDebitCard',
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value as String?;
                });
              },
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: (){
                _selectedPaymentMethod != null ? _initiatePayment : null ;
                Fluttertoast.showToast(
                msg: "Your order is confirmed",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                fontSize: 16.0
                );
              },
              child: const Text('Make a Payment'),
            ),
          ],
        ),
      ),
    );
  }
}