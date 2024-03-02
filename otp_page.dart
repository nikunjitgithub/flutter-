import 'package:flutter/material.dart';

class OTPPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter OTP'),
      ),
      body: OTPForm(),
    );
  }
}

class OTPForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(labelText: 'OTP'),
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            // Verify OTP logic
          },
          child: Text('Verify OTP'),
        ),
      ],
    );
  }
}