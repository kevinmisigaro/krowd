import 'package:flutter/material.dart';
import 'package:krowd_app/landing.dart';
import 'package:krowd_app/pages/events.dart';
import 'package:krowd_app/pages/friends.dart';
import 'package:krowd_app/pages/home.dart';
import 'package:krowd_app/pages/notifications.dart';
import 'package:krowd_app/pages/auth/signup.dart';
import 'package:krowd_app/pages/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black,
        primaryColor: Colors.white,
        textTheme: TextTheme(),
        appBarTheme: AppBarTheme()
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => Splash(),
        '/signup': (_) => Signup(),
        '/home': (_) => Home(),
        '/landing': (_) => Landing(),
        '/events': (_) => EventsPage(),
        '/friends': (_) => FriendsPage(),
        '/notifications': (_) => NotificationsPage()
      },
    );
  }
}
