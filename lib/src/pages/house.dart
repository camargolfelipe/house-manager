import 'package:flutter/material.dart';
import 'package:housemanager/src/utils/routes.dart';
import 'package:housemanager/src/utils/strings.dart';
import '../components/house.dart';
import '../utils/colors.dart';

class HousePage extends StatelessWidget {
  const HousePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Routes routes = Routes();
    Strings strings = Strings();

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Container(
              padding: const EdgeInsets.all(4),
              alignment: Alignment.topLeft,
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/house.PNG'),
                  fit: BoxFit.cover,
                ),
              ),
              child: GestureDetector(
                onTap: (() {
                  routes.simple(context, '/');
                }),
                child: CircleAvatar(
                    backgroundColor: thirdColor.withOpacity(0.7),
                    child:
                        Icon(Icons.chevron_left_rounded, size: 32, color: ice)),
              )),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.01,
            color: thirdColor,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              strings.address.toUpperCase(),
              style: TextStyle(
                color: mainColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              HouseDetailItems(Icons.pin_drop_outlined, 'Caçapava - SP'),
              HouseDetailItems(Icons.bedroom_child_outlined, '2 Quartos'),
              HouseDetailItems(Icons.shower, '2 Banheiros'),
            ],
          ),
          Divider(color: secondColor.withOpacity(0.5)),
          const HouseExternalDetailItems()
        ],
      ),
    );
  }
}

class HouseDetailItems extends StatelessWidget {
  IconData icon;
  String title;
  HouseDetailItems(this.icon, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: secondColor, width: 1),
            ),
            child: Icon(icon, size: 16, color: secondColor),
          ),
          Text(title,
              style: TextStyle(
                  color: secondColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
