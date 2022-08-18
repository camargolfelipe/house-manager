import 'package:flutter/material.dart';
import 'package:housemanager/src/utils/colors.dart';
import 'package:housemanager/src/utils/strings.dart';

class EvolutionPage extends StatelessWidget {
  const EvolutionPage({Key? key}) : super(key: key);

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
          strings.evolution,
          style: TextStyle(
              color: mainColor, fontSize: 16, fontWeight: FontWeight.w300),
        ),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return EvolutionItems('Notícia $index',
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ');
          }),
    );
  }
}

class EvolutionItems extends StatelessWidget {
  String title;
  String description;
  EvolutionItems(this.title, this.description, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ice,
          boxShadow: [
            BoxShadow(
              color: black.withOpacity(0.2),
              blurRadius: 16,
              offset: Offset(0, 8),
            ),
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: mainColor, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              '10/06/2022',
              style: TextStyle(
                  color: mainColor, fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            description,
            style: TextStyle(color: grey, fontSize: 12),
          ),
        ),
      ]),
    );
  }
}
