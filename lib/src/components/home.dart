import 'package:flutter/material.dart';
import 'package:housemanager/src/pages/evolution.dart';
import 'package:housemanager/src/pages/invoice.dart';
import 'package:housemanager/src/utils/colors.dart';
import 'package:housemanager/src/utils/routes.dart';

import '../pages/expenses.dart';
import '../utils/strings.dart';

class MenuHome extends StatelessWidget {
  bool isDebit = true;
  MenuHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Strings strings = Strings();
    return Row(
      children: [
        Expanded(
            child:
                MenuHomeItem(strings.debit, Icons.attach_money, InvoicePage())),
        Expanded(
            child: MenuHomeItem(
                strings.evolution, Icons.show_chart, const EvolutionPage())),
        Expanded(
            child: MenuHomeItem(
                strings.expenses, Icons.local_atm, const ExpensesPage())),
      ],
    );
  }
}

class MenuHomeItem extends StatelessWidget {
  Widget route;
  String label;
  IconData icon;
  MenuHomeItem(this.label, this.icon, this.route, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Routes routes = Routes();
        routes.constructed(context, route);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: ice,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: black.withOpacity(0.15),
              blurRadius: 16,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Icon(
                  icon,
                  color: ice,
                  size: 24,
                ),
              ),
            ),
            Text(
              label,
              style: TextStyle(
                  color: mainColor, fontSize: 12, fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}

class HomeTitle extends StatelessWidget {
  String label;
  HomeTitle(this.label, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        label,
        style: TextStyle(
          color: mainColor,
          fontSize: 16,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}

class YouHouseComponent extends StatelessWidget {
  const YouHouseComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Strings strings = Strings();
    Routes routes = Routes();
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.bottomRight,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              border: Border.all(color: thirdColor, width: 8),
              image: const DecorationImage(
                  image: AssetImage('assets/house.PNG'), fit: BoxFit.cover)),
          child: GestureDetector(
            onTap: (() {
              routes.simple(context, '/house');
            }),
            child: CircleAvatar(
                backgroundColor: thirdColor.withOpacity(0.9),
                child: Icon(Icons.chevron_right_rounded, size: 24, color: ice)),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          width: double.infinity,
          decoration: BoxDecoration(
            color: thirdColor,
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
          child: Text(
            strings.address,
            style: TextStyle(
                color: mainColor, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

class NewsComponent extends StatelessWidget {
  const NewsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.bottomLeft,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(4),
        height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: mainColor.withOpacity(0.3), width: 2),
            image: const DecorationImage(
                image: AssetImage('assets/news.jpeg'), fit: BoxFit.cover)),
        child: Text(
          'Início da Obra - Fundamento da Casa.',
          style: TextStyle(
              color: ice,
              fontSize: 10,
              fontWeight: FontWeight.bold,
              backgroundColor: mainColor.withOpacity(0.4)),
        ),
      ),
    );
  }
}
