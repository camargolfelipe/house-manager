import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:housemanager/src/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'House Manager',
      theme: ThemeData(
          textTheme: GoogleFonts.ubuntuTextTheme(
        Theme.of(context).textTheme,
      )),
      routes: appRoutes,
      initialRoute: '/',
    );
  }
}
