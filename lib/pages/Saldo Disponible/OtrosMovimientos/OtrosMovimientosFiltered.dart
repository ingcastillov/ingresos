import 'package:flutter/material.dart';
import 'package:ingresos/pages/Saldo%20Disponible/saldo_disponible.dart';
import 'package:intl/intl.dart';

import 'filtro_otrosmovimientos.dart';
import 'otros_movimientos.dart';

class OtrosMovimientosFiltered extends StatefulWidget {
   final List<Otros> searchResult;

  OtrosMovimientosFiltered({@required this.searchResult,});

  @override
  _OtrosMovimientosFilteredState createState() => _OtrosMovimientosFilteredState();
}

class _OtrosMovimientosFilteredState extends State<OtrosMovimientosFiltered> {
 List<Otros> others;
 List<Otros> selectedOtros;
 final pattern = new NumberFormat("\u0024###,###,###.##");
  final pattern2 = new NumberFormat("\u0024###,###,###.##");

List<Otros> searchResult;
    void initState() {
    super.initState();
       
    selectedOtros = [];
    others = Otros.getOtros();
 searchResult= widget.searchResult;
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.orange,
            ),
            onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => SaldoDisponible()));
            }),
        centerTitle: true,
        title: Text(
          'Otros Movimientos',
          style: TextStyle(color: Colors.blueGrey),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.filter_list,
                color: Colors.orange,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FilterOtrosMovimientos())); 
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
             // alignment: Alignment.center,
              children: <Widget>[
                _crearFondo(context),
                listaOpciones(),
            
                Center(
                  child: Column(
                    children: <Widget>[
                        Text(
                        '',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                
                      Text(
                        'Otros Movimientos',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(''),
                      Text('\u002420,302.50',
                          style: TextStyle(color: Colors.white, fontSize: 38)),
                      Text(''),
                      Text('Del 14/10/19 al 16/10/19',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ],
                  ),
                ),
              ],
            ),
       
          ],
        ),
      ),
    );
  }

    Widget _crearFondo(context) {
    final size = MediaQuery.of(context).size;
    final colorFondo = Container(
      height: size.height * 0.27,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
        Color.fromRGBO(19, 64, 155, 1.0),
        Color.fromRGBO(19, 64, 155, 1.0),
        Color.fromRGBO(19, 64, 155, 1.0),
      ])),
    );

    return Stack(
      children: <Widget>[
        colorFondo,
        Container(
          //  padding: EdgeInsets.only(top:50 , left: 20),
          child: Column(
            children: <Widget>[
              SizedBox(),
            ],
          ),
        ),
        Container(
          // padding: EdgeInsets.only(top:10 , left: 20),
          child: Column(
            children: <Widget>[
              SizedBox(),
            ],
          ),
        ),
      ],
    );
  }

    Widget listaOpciones() {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
        child: Column(children: <Widget>[
      SafeArea(
          child: Container(
        height: 110,
      )),
      Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        margin: EdgeInsets.symmetric(vertical: 50),
        child: Column(
          children: <Widget>[
 DataTable(
//dataRowHeight: 20,
columnSpacing: 20,
              //  sortColumnIndex: 2,
                sortAscending: false,
                columns: [
                  DataColumn(
                    label: Text("Concepto", style: TextStyle(fontSize: 16, color: Colors.black),)),
                  DataColumn(label: Text("Observación",  style: TextStyle(fontSize: 16,  color: Colors.black))),
                  DataColumn(label: Text("Monto",  style: TextStyle(fontSize: 16,  color: Colors.black))),
                ],
                rows: searchResult.map(
      (Otros otro) => DataRow(
            selected: selectedOtros.contains(otro),
            cells: [

              DataCell(
                Text(otro.concepto, style: TextStyle(color: Colors.black54, fontSize: 16)),
                
              ),
           DataCell(
                Text(otro.observacion, style: TextStyle(color: Colors.black54, fontSize: 16)),
             
              ),
               DataCell(
           otro.monto.isNegative ?   Text(pattern2.format(otro.monto),  
                style: TextStyle(color: Colors.red, fontSize: 16) ,) : Text(pattern.format(otro.monto),  
                style: TextStyle(color: Colors.black54, fontSize: 16) ,),
             
              ),
            
             
          
            ]
            ),
    )
    .toList() ?? [],  
              )
      
          ],
        ),
        width: size.width * 0.90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              offset: Offset(4, 3),
              blurRadius: 3.0,
              spreadRadius: 3.0,
            ),
          ],
        ),
      ),
    ]));
  }

}


