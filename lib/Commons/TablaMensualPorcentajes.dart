import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class TablaMensual extends StatefulWidget {
  final double montoActual;
final double montoPenultimo;
final double montoAntepenultimo;
final bool incremento;
final bool incremento2;
final bool incremento3;
final bool montoAnual;



  final double porcentajeActual;
final double porcentajePenultimo;
final double porcentajeAntepenultimo;

   TablaMensual(
      {Key key,
   @required this.montoActual,
     @required this.montoPenultimo,
       @required this.montoAntepenultimo,
       @required this.porcentajeActual,
     @required this.porcentajePenultimo,
       @required this.porcentajeAntepenultimo,
       @required  this.incremento,
       @required  this.incremento2,
       @required  this.incremento3,
     @required  this.montoAnual,
   

   
  }): super(key: key);
    TablaMensualState createState() => new TablaMensualState();
}

class TablaMensualState extends State<TablaMensual> {
final pattern = new NumberFormat("\u0024###,###,###.##");
  final azulMarino =  Color.fromRGBO(4, 54, 129, 1);
 
@override
  Widget build(BuildContext context) {

    return   DataTable(
dataRowHeight: 30,

columnSpacing: 40,
horizontalMargin: 45,
              //  sortColumnIndex: 2,
                sortAscending: false,
                columns: [

                  DataColumn(
                     
                    label:
                   
                  Text("Año", style: TextStyle(fontSize: 16, color: Colors.black),)),
  DataColumn(label: 
  
     widget.montoAnual ? Text("Monto\nanual",  style: TextStyle(fontSize: 16,  color: Colors.black))  :   Text("Monto por\nmes",  style: TextStyle(fontSize: 16,  color: Colors.black))),
                  DataColumn(label: Text("Incremento",  style: TextStyle(fontSize: 16,  color: Colors.black))),
              
                ],
                rows: [
                  DataRow(
                   // selected: true,
                    cells: [
                 //   DataCell(Text("Andres"), showEditIcon: true),
                    DataCell(Row(
                      children: <Widget>[
                        Icon(Icons.fiber_manual_record, color: Colors.orange, size: 13,),
                        Text("2019", style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    )),
                    DataCell(Text(pattern.format(widget.montoActual), style: TextStyle(fontSize: 16, color: Colors.grey))),
                      DataCell(Row(
                      children: <Widget>[
                       widget.incremento ? Icon(Icons.arrow_upward, color: Colors.green,) : Icon(Icons.arrow_downward, color: Colors.red,),
                        Text("%"+widget.porcentajeActual.toString(), style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    ))
                  ]),
                  DataRow(cells: [
                    DataCell(Row(
                      children: <Widget>[
                                                Icon(Icons.fiber_manual_record, color: Colors.purple, size: 13,),
                        Text("2018", style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    )),
                    DataCell(Text(pattern.format(widget.montoAntepenultimo), style: TextStyle(fontSize: 16, color: Colors.grey))),
                      DataCell(Row(
                      children: <Widget>[
                        widget.incremento2 ? Icon(Icons.arrow_upward, color: Colors.green,) : Icon(Icons.arrow_downward, color: Colors.red,),
                        Text("%"+widget.porcentajePenultimo.toString(), style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    ))
                  ]),
                     DataRow(cells: [
                    DataCell(Row(
                      children: <Widget>[
                                                Icon(Icons.fiber_manual_record, color: azulMarino, size: 13,),
                        Text("2017", style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    )),
                    DataCell(Text(pattern.format(widget.montoPenultimo), style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Row(
                      children: <Widget>[
                        widget.incremento3 ? Icon(Icons.arrow_upward, color: Colors.green,) : Icon(Icons.arrow_downward, color: Colors.red,),
                        Text("%"+widget.porcentajeAntepenultimo.toString(), style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    ))
                  ]),
               

                ],
              );

  }



}
