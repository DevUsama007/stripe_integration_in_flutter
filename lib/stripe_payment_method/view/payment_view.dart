import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:stripe_integration_in_flutter/stripe_payment_method/services/payment_services.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  PaymentServices paymentServices = PaymentServices();
  Map<String, dynamic>? paymentIntent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Stripe Payment',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                makePayment();
              },
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'Pay',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future makePayment() async {
    paymentIntent = await paymentServices.createPaymentIntent('10', 'USD');
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            merchantDisplayName: 'Usama Jutt',
            paymentIntentClientSecret: paymentIntent!['client_secret'],
            googlePay: PaymentSheetGooglePay(
                merchantCountryCode: 'US',
                testEnv: true,
                label: 'UsamaJutt',
                currencyCode: 'USD')));

    //display payement sheet
    displayPaymentSheet();
  }

  displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet();
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Payment Successful')));
    } on StripeException catch (e) {
      if (e.error.code == FailureCode.Canceled) {
        // User canceled → show a Snackbar or re-open sheet
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Payment Cancel')));
      }
      // ScaffoldMessenger.of(context)
      //     .showSnackBar(SnackBar(content: Text('Payment Cancel $e')));
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Payment Failed')));
    }
  }
}
