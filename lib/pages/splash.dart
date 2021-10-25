import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:krowd_app/partials.dart';

class Splash extends StatefulWidget {
  @override
  _Splash createState() => _Splash();
}

class _Splash extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    final controller = FadeInController(autoStart: true);

    Timer(Duration(seconds: 4), () => Navigator.pushNamed(context, '/landing'));

    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(splashImageUrl), fit: BoxFit.cover)),
      child: Center(
          child: FadeIn(
        child: Text(
          'Krowd',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'MonumentExtended',
              fontSize: 30),
        ),
        duration: Duration(seconds: 3),
        controller: controller,
      )),
    ));
  }
}
