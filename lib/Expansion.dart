import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'Commons/etiquetaInformativa.dart';

class ExpansionPa extends StatefulWidget {
  ExpansionPa({Key key}) : super(key: key);

  @override
  _ExpansionPaState createState() => _ExpansionPaState();
}

List<Item> _data = generateItems(8);
final pattern = new NumberFormat("\u0024###,###,###.##");
class _ExpansionPaState extends State<ExpansionPa> {
  @override
  Widget build(BuildContext context) {
    return
 SingleChildScrollView(
    child: Container(
      child: _buildPanel(),
    ),
  );
}

Widget _buildPanel() {
  return ExpansionPanelList(

    expansionCallback: (int index, bool isExpanded) {
      setState(() {
        _data[index].isExpanded = !isExpanded;
      });
    },
    children: _data.map<ExpansionPanel>((Item item) {
      return ExpansionPanel(
      
        headerBuilder: (BuildContext context, bool isExpanded) {
          return ListTile(
          leading: Text(item.headerValue, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          title: Container(
             alignment: Alignment.centerRight,
            child: Text(pattern.format(2000), style:  TextStyle(fontSize: 16, fontWeight: FontWeight.bold) )),

          );
        },
        body: Column(
          children: <Widget>[
       EtiquetaInformativa(
        fondocolor: Color.fromRGBO(243, 251, 254, 1),
        tituloEtiqueta: 'IVA Acreditado', 
        montoEtiqueta: 1000, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
        
        buttonRequired: false, 
        color: Colors.black
        ),
          ],
        ),
        isExpanded: item.isExpanded,
      );
    }).toList(),
  );
}
  }




// stores ExpansionPanel state information
class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}