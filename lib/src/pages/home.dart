import 'package:flutter/material.dart';
import 'package:housemanager/src/utils/colors.dart';
import 'package:housemanager/src/utils/strings.dart';
import '../components/home.dart';
import '../components/timeline.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Strings strings = Strings();
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          strings.home,
          style: TextStyle(
              color: mainColor, fontSize: 16, fontWeight: FontWeight.w300),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            strings.introduction,
            style: TextStyle(
              color: mainColor,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(color: secondColor.withOpacity(0.5)),
          ),
          MenuHome(),
          HomeTitle(strings.your_house),
          const YouHouseComponent(),
          HomeTitle(strings.timeline),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: ProcessTimelinePage()),
          HomeTitle(strings.news),
          Row(
            children: const [
              NewsComponent(),
              NewsComponent(),
            ],
          )
        ],
      ),
    );
  }
}
