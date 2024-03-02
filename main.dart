
import 'package:flutter/material.dart';
import 'otp_page.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/login.jpg', // Provide the path to your image
                  width: 200,
                  height: 100,
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: _mobileController,
                  decoration: InputDecoration(
                    labelText: 'Mobile Number',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                  maxLength: 10,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your mobile number';
                    } else if (value.length != 10) {
                      return 'Mobile number must be exactly 10 digits';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: _otpController,
                  decoration: InputDecoration(
                    labelText: 'Enter OTP',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10.0), // Adjust spacing between OTP field and "Resend OTP" button
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Resend OTP logic
                      },
                      child: Text(
                        'Resend OTP',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  height: 60.0,
                  child: Container(
          height: 60.0,
          alignment: Alignment.center,
          color: Colors.blue, // Color the bottom app bar with blue
          child: ElevatedButton(
            onPressed: () {
              // Navigate to OTP page after sign-up
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OTPPage()),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Color the button with blue
            ),
            child: Text(
              'login',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white, // Color the button text with white
              ),
            ),
          ),
        ),
                 
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Navigate to sign-up page
                      },
                      child: Text(
                        'Sign up for new user',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      
      
    );
  }
}