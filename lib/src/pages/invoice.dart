import 'package:flutter/material.dart';
import 'package:housemanager/src/utils/colors.dart';
import 'package:housemanager/src/utils/strings.dart';

class InvoicePage extends StatelessWidget {
  bool isPaid = false;
  InvoicePage({Key? key}) : super(key: key);

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
            strings.debit,
            style: TextStyle(
                color: mainColor, fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              isPaid ? strings.non_pendent_invoice : strings.pendent_invoice,
              style: TextStyle(
                color: mainColor,
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return InvoiceComponent(false, '450,00', '05/1$index/2022',
                    '$index,70', '123123 21 1231241 1241 1231231 2');
              }),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Divider(color: mainColor),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return InvoiceComponent(true, '450,00', '05/1$index/2022',
                    '$index,70', '123123 21 1231241 1241 1231231 2');
              }),
        ]));
  }
}

class InvoiceComponent extends StatelessWidget {
  bool isPaid;
  String value;
  String date;
  String debit;
  String barCode;
  InvoiceComponent(this.isPaid, this.value, this.date, this.debit, this.barCode,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: darkGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    color: isPaid ? green : red,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(color: isPaid ? green : red, blurRadius: 4)
                    ]),
              )),
          InvoiceComponentItem(
            'Pagamento',
            isPaid ? 'Efetuado' : 'Pendente',
          ),
          InvoiceComponentItem(
            'Valor',
            'R\$ $value',
          ),
          InvoiceComponentItem(
            'Vencimento',
            date,
          ),
          Visibility(
              visible: !isPaid,
              child: InvoiceComponentItem(
                'Juros e Multa',
                '+ R\$ $debit',
              )),
          Visibility(
            visible: !isPaid,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Copiar código de barras',
                style: TextStyle(
                    color: secondColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InvoiceComponentItem extends StatelessWidget {
  String label;
  String value;
  InvoiceComponentItem(this.label, this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
                color: white, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Text(
            value,
            style: TextStyle(
                color: grey, fontSize: 12, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
