import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/strings.dart';

class ExpensesPage extends StatelessWidget {
  const ExpensesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Strings strings = Strings();
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.chevron_left, color: mainColor)),
          backgroundColor: backgroundColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            strings.expenses,
            style: TextStyle(
                color: mainColor, fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ),
        body: Container());
  }
}
