import 'package:flutter/material.dart';
import 'package:ingresos/Commons/TituloColorComisiones.dart';
import 'package:ingresos/pages/Saldo%20Disponible/saldo_disponible.dart';
import 'comisiones_page.dart';
import 'filter_comisiones.dart';




class ComisionesPageFiltered extends StatefulWidget {
 final List<Avengers> searchResult;

   ComisionesPageFiltered({@required this.searchResult,});
  @override
  _ComisionesPageFilteredState createState() => _ComisionesPageFilteredState();
}
 
class _ComisionesPageFilteredState extends State<ComisionesPageFiltered> {



  List<Avengers> selectedComisiones;
  List<Avengers> searchResult;
  List<Avengers> searchResultVida=[];
  List<Avengers> searchResultSalud=[];
  List<Avengers> searchResultAutos=[];
  List<Avengers> searchResultDanos=[];
  bool sort;
  int indexColumn=1;

  @override
  void initState() {
    super.initState();
        sort = false;
  
    selectedComisiones = [];
    searchResult= widget.searchResult;
     searchResultVida = widget.searchResult.where((i) => i.tipo.contains('vida')).toList();
 searchResultSalud = widget.searchResult.where((i) => i.tipo.contains('salud')).toList();
  searchResultAutos = widget.searchResult.where((i) => i.tipo.contains('autos')).toList();
   searchResultDanos = widget.searchResult.where((i) => i.tipo.contains('danos')).toList();


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
                pantallaDanos()
            
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
                pantallaDanos()

            
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
   rows:  searchResult.map(
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
   rows:  searchResultVida.map(
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
   rows:  searchResultSalud.map(
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
   rows:  searchResultAutos.map(
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
   rows:  searchResultDanos.map(
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
    searchResult.sort((a, b) => a.poliza.compareTo(b.poliza));

    } else {
      searchResult.sort((a, b) => b.poliza.compareTo(a.poliza));

    }
  }
} 

  onSortColum2(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 2) {
    if (ascending) {
      searchResult.sort((a, b) => a.asegurado.compareTo(b.asegurado));

    } else {
      searchResult.sort((a, b) => b.asegurado.compareTo(a.asegurado));

    }
  }
} 

  onSortColum3(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 3) {
    if (ascending) {
    searchResult.sort((a, b) => a.comision.compareTo(b.comision));

    } else {
      searchResult.sort((a, b) => b.comision.compareTo(a.comision));

    }
  }
} 

  onSortColum4(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 4) {
    if (ascending) {
    searchResult.sort((a, b) => a.prima.compareTo(b.prima));

    } else {
      searchResult.sort((a, b) => b.prima.compareTo(a.prima));

    }
  }
} 


}


