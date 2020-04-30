import 'package:flutter/material.dart';

class OtrosMovimientos extends StatefulWidget {
  OtrosMovimientos({Key key}) : super(key: key);

  @override
  _OtrosMovimientosState createState() => _OtrosMovimientosState();
}

class _OtrosMovimientosState extends State<OtrosMovimientos> {

  
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
              Navigator.pop(context);
            }),
        centerTitle: true,
        title: Text(
          'Otros Movimientos',
          style: TextStyle(color: Colors.blueGrey),
        ),
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
        height: 130,
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
                rows: [
                  DataRow(
                   // selected: true,
                    cells: [
                 //   DataCell(Text("Andres"), showEditIcon: true),
                    DataCell(Text("Buzón E", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Text("Toronto 2019", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Text("\u00245500", style: TextStyle(fontSize: 16, color: Colors.grey)))
                  ]),
                  DataRow(cells: [
                    DataCell(Text("Fianzas", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Text("Toronto 2019", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Text("-\u00245500", style: TextStyle(fontSize: 16, color: Colors.red)))
                  ]),
                     DataRow(cells: [
                    DataCell(Text("Pensión Alimenticia", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Text("", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Text("\u00240", style: TextStyle(fontSize: 16, color: Colors.grey)))
                  ]),
                     DataRow(cells: [
                    DataCell(Text("Congresos", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Text("Toronto 2019", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Text("\u00245500", style: TextStyle(fontSize: 16, color: Colors.grey)))
                  ])

                ],
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