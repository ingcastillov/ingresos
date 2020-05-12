import 'package:flutter/material.dart';
import 'package:ingresos/Commons/TituloColorComisiones.dart';
import 'package:ingresos/pages/Saldo%20Disponible/saldo_disponible.dart';

import 'filter_comisiones.dart';

 class Avengers{
String tipo;
String poliza;
String asegurado;
double comision;
double prima;


Avengers({this.tipo, this.poliza, this.asegurado, this.comision, this.prima});

static List<Avengers> getAvengers(){
  return <Avengers>[
   Avengers(tipo: 'vida', poliza: '234324', asegurado: 'Thor', comision: 3000, prima: 1234),
   Avengers(tipo: 'salud', poliza: '1234', asegurado: 'Hulk', comision: 4000, prima: 12345),
   Avengers(tipo: 'autos', poliza: '44344', asegurado: 'Black Widow', comision: 8000, prima: 123456),
   Avengers(tipo: 'danos', poliza: '235212776', asegurado: 'Captain America', comision: 10000, prima: 1234567),
   Avengers(tipo: 'vida', poliza: '124', asegurado: 'Thor nillo', comision: 10000, prima: 3222),
   Avengers(tipo: 'autos', poliza: '333333', asegurado: 'Spiderman', comision: 12332, prima: 12345),
   Avengers(tipo: 'danos', poliza: '22222', asegurado: 'Batman', comision: 111111, prima: 333333),
   Avengers(tipo: 'autos', poliza: '11111', asegurado: 'Captain America', comision: 10000, prima: 1234567),
   Avengers(tipo: 'vida', poliza: '555544', asegurado: 'Hawkeye', comision: 10000, prima: 1234567),
    Avengers(tipo: 'salud', poliza: '34433', asegurado: 'Captain Marvel', comision: 4000, prima: 12345),
    Avengers(tipo: 'salud', poliza: '1234', asegurado: 'Rocket Racoon', comision: 4000, prima: 12345),
  ];
}

} 

class ComisionesPage extends StatefulWidget {


  @override
  _ComisionesPageState createState() => _ComisionesPageState();
}

class _ComisionesPageState extends State<ComisionesPage> {


  List<Avengers> comisiones;
   List<Avengers> comisionesVida;
     List<Avengers> comisionesSalud;
       List<Avengers> comisionesAutos;
         List<Avengers> comisionesDanos;
  List<Avengers> selectedComisiones;
  bool sort;
  int indexColumn=1;
  @override
  void initState() {
    super.initState();
        sort = false;
    selectedComisiones = [];
    comisiones = Avengers.getAvengers();
 comisionesVida = Avengers.getAvengers().where((i) => i.tipo.contains('vida')).toList();
 comisionesSalud = Avengers.getAvengers().where((i) => i.tipo.contains('salud')).toList();
  comisionesAutos = Avengers.getAvengers().where((i) => i.tipo.contains('autos')).toList();
   comisionesDanos = Avengers.getAvengers().where((i) => i.tipo.contains('danos')).toList();
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
             Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SaldoDisponible()));
            }),
        centerTitle: true,
        title: Text(
          'Comisiones',
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
                    MaterialPageRoute(builder: (context) => FilterList()));
              })
        ],
      ),
      body: DefaultTabController(
        length: 5,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(isScrollable: true, tabs: [
                Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints.expand(width: 60),
                    // color: Colors.red,
                    //width: 900,
                    child: Row(
                      children: <Widget>[
                        Tab(
                          text: "  General",
                        ),
                      ],
                    )),
                Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints.expand(width: 50),
                    // color: Colors.red,
                    //width: 900,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.fiber_manual_record,
                          color: Colors.green,
                          size: 12,
                        ),
                        Tab(
                          text: "  Vida",
                        ),
                      ],
                    )),
                Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints.expand(width: 60),
                    // color: Colors.red,
                    //width: 900,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.fiber_manual_record,
                          color: Colors.blue,
                          size: 12,
                        ),
                        Tab(
                          text: "  Salud",
                        ),
                      ],
                    )),
                Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints.expand(width: 60),
                    // color: Colors.red,
                    //width: 900,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.fiber_manual_record,
                          color: Colors.orange,
                          size: 12,
                        ),
                        Tab(
                          text: "  Autos",
                        ),
                      ],
                    )),
                Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints.expand(width: 70),
                    // color: Colors.red,
                    //width: 900,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.fiber_manual_record,
                          color: Colors.purple,
                          size: 12,
                        ),
                        Tab(
                          text: "  Daños",
                        ),
                      ],
                    )),
              ]),
            ),
            Expanded(
              child: Container(
                child: TabBarView(children: [
                  pantallaGeneral(),
                  pantallaVida(),
                  pantallaSalud(),
                  pantallaAutos(),
                  pantallaDanos(),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget bannerSort() {
    return DefaultTabController(
      length: 5,
      child: Column(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(height: 50),
            child: TabBar(isScrollable: true, tabs: [
              Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints.expand(width: 60),
                  // color: Colors.red,
                  //width: 900,
                  child: Row(
                    children: <Widget>[
                      Tab(
                        text: "  General",
                      ),
                    ],
                  )),
              Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints.expand(width: 50),
                  // color: Colors.red,
                  //width: 900,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.fiber_manual_record,
                        color: Colors.green,
                        size: 12,
                      ),
                      Tab(
                        text: "  Vida",
                      ),
                    ],
                  )),
              Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints.expand(width: 60),
                  // color: Colors.red,
                  //width: 900,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.fiber_manual_record,
                        color: Colors.blue,
                        size: 12,
                      ),
                      Tab(
                        text: "  Salud",
                      ),
                    ],
                  )),
              Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints.expand(width: 60),
                  // color: Colors.red,
                  //width: 900,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.fiber_manual_record,
                        color: Colors.orange,
                        size: 12,
                      ),
                      Tab(
                        text: "  Autos",
                      ),
                    ],
                  )),
              Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints.expand(width: 70),
                  // color: Colors.red,
                  //width: 900,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.fiber_manual_record,
                        color: Colors.purple,
                        size: 12,
                      ),
                      Tab(
                        text: "  Daños",
                      ),
                    ],
                  )),
            ]),
          ),
          Expanded(
            child: Container(
              child: TabBarView(children: [
                pantallaGeneral(),
                pantallaVida(),
                pantallaSalud(),
                pantallaAutos(),
                pantallaDanos(),
              ]),
            ),
          )
        ],
      ),
    );
  }

  Widget pantallaGeneral() {
   
    return ListView(
      children: <Widget>[
        TituloColorComisiones(montoComisiones: 20000.43, color: Colors.blueGrey),

       SingleChildScrollView(
         child: DataTable(
           
dataRowHeight: 50,
columnSpacing: 6,
horizontalMargin: 6.0,


                sortAscending: sort, 
   sortColumnIndex: indexColumn, 
                
columns: [
     DataColumn(
 
          label: Text(" ", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
 
     ),

     DataColumn(
 
          label: Text("Póliza", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
          onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
            indexColumn=1;
      });
      onSortColum(columnIndex, ascending);
    },
     ),
     DataColumn(
          label: Text("Asegurado", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
          indexColumn=2;
            sort = !sort;
      });
      onSortColum2(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Comisión", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=3;
      });
      onSortColum3(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Prima", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=4;
      });
      onSortColum4(columnIndex, ascending);
    },
         ),
     ],   
   rows:  comisiones.map(
      (Avengers avenger) => DataRow(
            selected: selectedComisiones.contains(avenger),
            cells: [

               DataCell(
              avenger.tipo=='vida' ? Icon(Icons.lens, color: Colors.green, size: 10,)
              : avenger.tipo=='salud' ? Icon(Icons.lens, color: Colors.blue, size: 10,) 
              : avenger.tipo=='autos' ? Icon(Icons.lens, color: Colors.orange, size: 10,) 
              : avenger.tipo=='danos' ? Icon(Icons.lens, color: Colors.purple, size: 10,)
              :null,
              
                
              ),
              DataCell(
                Text(avenger.poliza),
                
              ),
           DataCell(
                Text(avenger.asegurado),
             
              ),
               DataCell(
                Text(avenger.comision.toString()),
             
              ),
               DataCell(
                Text(avenger.prima.toString()),
             
              ),
              
            
             
          
            ]
            ),
    )
    .toList() ?? [],               
                  ),
       ),
        

      ],
    );
  }

  Widget pantallaVida() {

    return ListView(
      children: <Widget>[
        TituloColorComisiones(montoComisiones: 130000.43, color: Colors.green),

       SingleChildScrollView(
         child: DataTable(
           
dataRowHeight: 40,
columnSpacing: 6,
horizontalMargin: 6.0,

                sortAscending: sort, 
   sortColumnIndex: indexColumn, 
                
columns: [
     DataColumn(
 
          label: Text(" ", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
 
     ),

     DataColumn(
 
          label: Text("Póliza", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
          onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
            indexColumn=1;
      });
      onSortColum(columnIndex, ascending);
    },
     ),
     DataColumn(
          label: Text("Asegurado", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
          indexColumn=2;
            sort = !sort;
      });
      onSortColum2(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Comisión", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=3;
      });
      onSortColum3(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Prima", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=4;
      });
      onSortColum4(columnIndex, ascending);
    },
         ),
     ],   
   rows:  comisionesVida.map(
      (Avengers avenger) => DataRow(
            selected: selectedComisiones.contains(avenger),
            cells: [

               DataCell(
        Text('')
              
                
              ),
              DataCell(
                Text(avenger.poliza),
                
              ),
           DataCell(
                Text(avenger.asegurado),
             
              ),
               DataCell(
                Text(avenger.comision.toString()),
             
              ),
               DataCell(
                Text(avenger.prima.toString()),
             
              ),
              
            
             
          
            ]
            ),
    )
    .toList() ?? [],               
                  ),
       ),
        

      ],
    );


  }

  Widget pantallaSalud() {
    return ListView(
      children: <Widget>[
        TituloColorComisiones(montoComisiones: 110000.43, color: Colors.blue),

       SingleChildScrollView(
         child: DataTable(
           
dataRowHeight: 40,
columnSpacing: 6,
horizontalMargin: 6.0,

                sortAscending: sort, 
   sortColumnIndex: indexColumn, 
                
columns: [
     DataColumn(
 
          label: Text(" ", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
 
     ),

     DataColumn(
 
          label: Text("Póliza", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
          onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
            indexColumn=1;
      });
      onSortColum(columnIndex, ascending);
    },
     ),
     DataColumn(
          label: Text("Asegurado", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
          indexColumn=2;
            sort = !sort;
      });
      onSortColum2(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Comisión", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=3;
      });
      onSortColum3(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Prima", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=4;
      });
      onSortColum4(columnIndex, ascending);
    },
         ),
     ],   
   rows:  comisionesSalud.map(
      (Avengers avenger) => DataRow(
            selected: selectedComisiones.contains(avenger),
            cells: [
               DataCell(
        Text('')
              ),
              DataCell(
                Text(avenger.poliza),         
              ),
           DataCell(
                Text(avenger.asegurado),  
              ),
               DataCell(
                Text(avenger.comision.toString()), 
              ),
               DataCell(
                Text(avenger.prima.toString()),
              ),         
            ]
            ),
    )
    .toList() ?? [],               
                  ),
       ),
      ],
    );
  }

  Widget pantallaAutos() {
    return ListView(
      children: <Widget>[
        TituloColorComisiones(montoComisiones: 450000.43, color: Colors.orange),

       SingleChildScrollView(
         child: DataTable(
           
dataRowHeight: 40,
columnSpacing: 6,
horizontalMargin: 6.0,

                sortAscending: sort, 
   sortColumnIndex: indexColumn, 
                
columns: [
     DataColumn(
 
          label: Text(" ", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
 
     ),

     DataColumn(
 
          label: Text("Póliza", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
          onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
            indexColumn=1;
      });
      onSortColum(columnIndex, ascending);
    },
     ),
     DataColumn(
          label: Text("Asegurado", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
          indexColumn=2;
            sort = !sort;
      });
      onSortColum2(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Comisión", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=3;
      });
      onSortColum3(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Prima", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=4;
      });
      onSortColum4(columnIndex, ascending);
    },
         ),
     ],   
   rows:  comisionesAutos.map(
      (Avengers avenger) => DataRow(
            selected: selectedComisiones.contains(avenger),
            cells: [
               DataCell(
        Text('')
              ),
              DataCell(
                Text(avenger.poliza),         
              ),
           DataCell(
                Text(avenger.asegurado),  
              ),
               DataCell(
                Text(avenger.comision.toString()), 
              ),
               DataCell(
                Text(avenger.prima.toString()),
              ),         
            ]
            ),
    )
    .toList() ?? [],               
                  ),
       ),
      ],
    );
  }

  Widget pantallaDanos() {
    return ListView(
      children: <Widget>[
        TituloColorComisiones(montoComisiones: 333333.43, color: Colors.purple),

       SingleChildScrollView(
         child: DataTable(
           
dataRowHeight: 40,
columnSpacing: 6,
horizontalMargin: 6.0,

                sortAscending: sort, 
   sortColumnIndex: indexColumn, 
                
columns: [
     DataColumn(
 
          label: Text(" ", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
 
     ),

     DataColumn(
 
          label: Text("Póliza", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
          onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
            indexColumn=1;
      });
      onSortColum(columnIndex, ascending);
    },
     ),
     DataColumn(
          label: Text("Asegurado", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
          indexColumn=2;
            sort = !sort;
      });
      onSortColum2(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Comisión", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=3;
      });
      onSortColum3(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Prima", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=4;
      });
      onSortColum4(columnIndex, ascending);
    },
         ),
     ],   
   rows:  comisionesDanos.map(
      (Avengers avenger) => DataRow(
            selected: selectedComisiones.contains(avenger),
            cells: [
               DataCell(
        Text('')
              ),
              DataCell(
                Text(avenger.poliza),         
              ),
           DataCell(
                Text(avenger.asegurado),  
              ),
               DataCell(
                Text(avenger.comision.toString()), 
              ),
               DataCell(
                Text(avenger.prima.toString()),
              ),         
            ]
            ),
    )
    .toList() ?? [],               
                  ),
       ),
      ],
    );
  }


  onSortColum(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 1) {
    if (ascending) {
    comisiones.sort((a, b) => a.poliza.compareTo(b.poliza));
     comisionesVida.sort((a, b) => a.poliza.compareTo(b.poliza));
     comisionesSalud.sort((a, b) => a.poliza.compareTo(b.poliza));
     comisionesAutos.sort((a, b) => a.poliza.compareTo(b.poliza));
     comisionesDanos.sort((a, b) => a.poliza.compareTo(b.poliza));
    } else {
      comisiones.sort((a, b) => b.poliza.compareTo(a.poliza));
      comisionesVida.sort((a, b) => b.poliza.compareTo(a.poliza));
      comisionesSalud.sort((a, b) => b.poliza.compareTo(a.poliza));
      comisionesAutos.sort((a, b) => b.poliza.compareTo(a.poliza));
      comisionesDanos.sort((a, b) => b.poliza.compareTo(a.poliza));
    }
  }
} 

  onSortColum2(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 2) {
    if (ascending) {
      comisiones.sort((a, b) => a.asegurado.compareTo(b.asegurado));
      comisionesVida.sort((a, b) => a.asegurado.compareTo(b.asegurado));
      comisionesSalud.sort((a, b) => a.asegurado.compareTo(b.asegurado));
      comisionesAutos.sort((a, b) => a.asegurado.compareTo(b.asegurado));
      comisionesDanos.sort((a, b) => a.asegurado.compareTo(b.asegurado));
    } else {
      comisiones.sort((a, b) => b.asegurado.compareTo(a.asegurado));
      comisionesVida.sort((a, b) => b.asegurado.compareTo(a.asegurado));
      comisionesSalud.sort((a, b) => b.asegurado.compareTo(a.asegurado));
      comisionesAutos.sort((a, b) => b.asegurado.compareTo(a.asegurado));
      comisionesDanos.sort((a, b) => b.asegurado.compareTo(a.asegurado));
    }
  }
} 

  onSortColum3(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 3) {
    if (ascending) {
    comisiones.sort((a, b) => a.comision.compareTo(b.comision));
     comisionesVida.sort((a, b) => a.comision.compareTo(b.comision));
     comisionesSalud.sort((a, b) => a.comision.compareTo(b.comision));
     comisionesAutos.sort((a, b) => a.comision.compareTo(b.comision));
     comisionesDanos.sort((a, b) => a.comision.compareTo(b.comision));
    } else {
      comisiones.sort((a, b) => b.comision.compareTo(a.comision));
       comisionesVida.sort((a, b) => b.comision.compareTo(a.comision));
       comisionesSalud.sort((a, b) => b.comision.compareTo(a.comision));
       comisionesAutos.sort((a, b) => b.comision.compareTo(a.comision));
       comisionesDanos.sort((a, b) => b.comision.compareTo(a.comision));
    }
  }
} 

  onSortColum4(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 4) {
    if (ascending) {
    comisiones.sort((a, b) => a.prima.compareTo(b.prima));
     comisionesVida.sort((a, b) => a.prima.compareTo(b.prima));
     comisionesSalud.sort((a, b) => a.prima.compareTo(b.prima));
     comisionesAutos.sort((a, b) => a.prima.compareTo(b.prima));
     comisionesDanos.sort((a, b) => a.prima.compareTo(b.prima));
    } else {
      comisiones.sort((a, b) => b.prima.compareTo(a.prima));
      comisionesVida.sort((a, b) => b.prima.compareTo(a.prima));
      comisionesSalud.sort((a, b) => b.prima.compareTo(a.prima));
       comisionesAutos.sort((a, b) => b.prima.compareTo(a.prima));
        comisionesDanos.sort((a, b) => b.prima.compareTo(a.prima));
    }
  }
} 


}


