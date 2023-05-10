import 'package:driver_ok_delivery/screens/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../screens/login_signup_screen.dart';
import '../screens/map_screen.dart';

class UserState extends StatelessWidget {
  const UserState({Key? key}) : super(key: key);

  static const String route = '/userState';

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;

    return user != null ? const MapScreen() : const LoginSignupScreen();
  }
}
