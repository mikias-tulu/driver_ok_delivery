import 'package:driver_ok_delivery/screens/channels.dart';
import 'package:driver_ok_delivery/screens/ebirr_screen.dart';
import 'package:driver_ok_delivery/screens/emergency_contacts.dart';
import 'package:driver_ok_delivery/screens/goal_screen.dart';
import 'package:driver_ok_delivery/screens/notifications.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'providers/map_provider.dart';
import 'providers/user_provider.dart';
import 'screens/cash_earned_screen.dart';
import 'screens/completed_trip_screen.dart';
import 'screens/login_signup_screen.dart';
import 'screens/map_screen.dart';
import 'screens/dashboard.dart';
import 'controller/user_state.dart';
import 'theme.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: MapProvider()),
        ChangeNotifierProvider.value(value: UserProvider.initialize()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ok Delivery Driver',
        initialRoute: UserState.route,
        theme: theme,
        routes: {
          UserState.route: (_) => const UserState(),
          Dashboard.route: (_) => const Dashboard(),
          LoginSignupScreen.route: (_) => const LoginSignupScreen(),
          MapScreen.route: (_) => const MapScreen(),
          CompletedTripsScreen.route: (_) => const CompletedTripsScreen(),
          CashEarnedScreen.route: (_) => const CashEarnedScreen(),
          //SigninWithPhoneScreen.route: (_) => SigninWithPhoneScreen(),
          NotificationsPage.route: (_) => const NotificationsPage(),
          GoalPage.route: (_) => const GoalPage(),
          EbirrWalletPage.route: (_) => const EbirrWalletPage(),
          ChannelsScreen.route: (_) => const ChannelsScreen(),
          EmergencyContactsScreen.route: (_) => const EmergencyContactsScreen(),
        },
      ),
    );
  }
}
