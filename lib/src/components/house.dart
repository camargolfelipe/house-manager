import 'package:flutter/material.dart';
import 'package:housemanager/src/utils/colors.dart';

class HouseExternalDetailItems extends StatelessWidget {
  const HouseExternalDetailItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var items = [
      'Brinquedoteca',
      'Academia Fitness',
      'Playground',
      'Mini Quadra de esportes',
      'Salão Gourmet',
      'Sala de jogos',
      'Sauna',
      '2 Piscinas',
      'Tomada de carro elétrico',
      'Espaço HomeOffice',
      'DogWash',
      'Varanda Gourmet',
      'Rede Congás',
      'Internet em todas as areas',
    ];
    return Padding(
        padding: const EdgeInsets.all(8.0),
        // implement GridView.builder
        child: GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: ScrollPhysics(),
            itemCount: items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 32),
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: mainColor,
                    ),
                    child: Icon(Icons.check, size: 12, color: ice),
                  ),
                  Text(
                    items[index],
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: black),
                  ),
                ],
              );
            }));
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
