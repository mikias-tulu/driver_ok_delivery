import 'package:flutter/material.dart';

import '../utils/widgets/login_signup_screen_widgets/login_signup_form.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  static const String route = '/login-signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Image(
                  image: AssetImage('assets/images/okdelivery.jpg'),
                  width: 200,
                  height: 140,
                ),
                const SizedBox(height: 0),
                Center(
                  child: Text(
                    'Ok Delivery',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                Center(
                  child: Text(
                    'Driver',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                const SizedBox(height: 20),
                const LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
