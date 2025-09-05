import 'dart:convert';

import 'package:stripe_integration_in_flutter/stripe_payment_method/app_strings.dart';
import 'package:http/http.dart' as http;
import 'package:stripe_integration_in_flutter/stripe_payment_method/app_urls.dart';

class PaymentServices {
  createPaymentIntent(String amount, String currency) async {
    try {
      Map<String, dynamic> body = {
        'amount': ((int.parse(amount)) * 100).toString(),
        'currency': currency,
        'payment_method_types[]': 'card'
      };
      var secretKey = AppStrings.stripeSecretKey;
      var response = await http.post(Uri.parse(AppUrls.paymentIntentApi),
          headers: {
            'Authorization': 'Bearer $secretKey',
            'Content-Type': 'application/x-www-form-urlencoded'
          },
          body: body);
      return jsonDecode(response.body.toString());
    } catch (e) {
      print('error $e');
    }
  }
}
