import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class TablaAcumulado extends StatefulWidget {
  final double montoActual;
final double montoPenultimo;
final double montoAntepenultimo;

final String periodo;
final String periodo2;
final String periodo3;





   TablaAcumulado(
      {Key key,
   @required this.montoActual,
     @required this.montoPenultimo,
       @required this.montoAntepenultimo,
       @required this.periodo,
       @required this.periodo2,
         @required this.periodo3,
   
   

   
  }): super(key: key);
    TablaAcumuladoState createState() => new TablaAcumuladoState();
}

class TablaAcumuladoState extends State<TablaAcumulado> {
final pattern = new NumberFormat("\u0024###,###,###.##");
  final azulMarino =  Color.fromRGBO(4, 54, 129, 1);
 
@override
  Widget build(BuildContext context) {

    return   Padding(
      padding: const EdgeInsets.fromLTRB(8,0,8,0),
      child: DataTable(
dataRowHeight: 30,

columnSpacing: 30,
horizontalMargin: 1,
                //  sortColumnIndex: 2,
                  sortAscending: false,
                  columns: [
              
              DataColumn(label: Text("Periodo", style: TextStyle(fontSize: 16, color: Colors.black),)),
              DataColumn(label: Text("Total Acumulado",  style: TextStyle(fontSize: 16,  color: Colors.black))),

                
                  ],
                  rows: [
                    DataRow(

                     // selected: true,
                      cells: [
                        
                   //   DataCell(Text("Andres"), showEditIcon: true),
                      DataCell(Row(
                        children: <Widget>[
                          Icon(Icons.fiber_manual_record, color: Colors.orange, size: 13,),
                          Text("2019 "+widget.periodo, style: TextStyle(fontSize: 15, color: Colors.grey)),
                        ],
                      )),
                      DataCell(Text(pattern.format(widget.montoActual), style: TextStyle(fontSize: 16, color: Colors.grey))),
                  
                    ]),

                           DataRow(cells: [
                      DataCell(Row(
                        children: <Widget>[
                                                  Icon(Icons.fiber_manual_record, color: Colors.purple, size: 13,),
                          Text("2018 "+widget.periodo2, style: TextStyle(fontSize: 15, color: Colors.grey)),
                        ],
                      )),
                      DataCell(Text(pattern.format(widget.montoPenultimo), style: TextStyle(fontSize: 16, color: Colors.grey))),
                
                    ]),
              
                       DataRow(cells: [
                      DataCell(Row(
                        children: <Widget>[
                                                  Icon(Icons.fiber_manual_record, color: azulMarino, size: 13,),
                          Text("2017 "+widget.periodo3, style: TextStyle(fontSize: 15, color: Colors.grey)),
                        ],
                      )),
                      DataCell(Text(pattern.format(widget.montoPenultimo), style: TextStyle(fontSize: 16, color: Colors.grey))),
                
                    ]),
                 

                  ],
                ),
    );

  }



}
