import 'package:flutter/material.dart';
import 'package:ingresos/Commons/TituloColorComisiones.dart';
import 'package:ingresos/saldo_disponible.dart';
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
         scrollDirection: Axis.horizontal,
         physics: ScrollPhysics(),
         child: DataTable(
           
dataRowHeight: 50,
columnSpacing: 2,
horizontalMargin: 6.0,


               sortAscending: sort, 
   sortColumnIndex: indexColumn, 
                
columns: [

     DataColumn(
            
          label: Text("    ", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
 
     ),
       DataColumn(
 
          label: Text("Numero de Póliza", style: TextStyle(fontSize: 14,  color: Colors.black),),
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
 
          label: Text("Nombre de Asegurado", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
          onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
            indexColumn=2;
      });
      onSortColum2(columnIndex, ascending);
    },
     ),
     DataColumn(
          label: Text("Comisión", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
          indexColumn=3;
            sort = !sort;
      });
      onSortColum3(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Prima       ", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=4;
      });
      onSortColum4(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Ramo", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=5;
      });
     onSortColum5(columnIndex, ascending);
    },
         ),
  

     DataColumn(
 
          label: Text("Tipo Comprobante", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
          onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
            indexColumn=6;
      });
      onSortColum6(columnIndex, ascending);
    },
     ),
     DataColumn(
          label: Text("Importe Antes Impuesto", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
          indexColumn=7;
            sort = !sort;
      });
      onSortColum7(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("I.V.A Acreditado", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=8;
      });
     onSortColum8(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("I.V.A Retenido", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=9;
      });
    onSortColum9(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("I.S.R Retenido", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=10;
      });
    onSortColum10(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Importe después de Impuestos", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=11;
      });
     onSortColum11(columnIndex, ascending);
    },
         ),
               DataColumn(
          label: Text("Clave Única", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=12;
      });
      onSortColum12(columnIndex, ascending);
    },
         ),
                 DataColumn(
          label: Text("N Recibo", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=13;
      });
      onSortColum13(columnIndex, ascending);
    },
         ),
                   DataColumn(
          label: Text("Folio", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=14;
      });
     onSortColum14(columnIndex, ascending);
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

               DataCell(
                Text(avenger.ramo),
                
              ),
        
              DataCell(
                Text(avenger.comprobante),
                
              ),
           DataCell(
                Text(avenger.importeAimpuestos.toString()),
             
              ),
               DataCell(
                Text(avenger.ivaAcreditado.toString()),
             
              ),
               DataCell(
                Text(avenger.ivaRetenido.toString()),
             
              ),
                DataCell(
                Text(avenger.isrRetenido.toString()),
             
              ),
            
                DataCell(
                Text(avenger.importeDimpuestos.toString()),
             
              ),
                 DataCell(
                Text(avenger.claveUnica),
             
              ),
                   DataCell(
                Text(avenger.nRecibo),
             
              ),
                   DataCell(
                Text(avenger.folio),
             
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
         scrollDirection: Axis.horizontal,
         physics: ScrollPhysics(),
         child: DataTable(
           
dataRowHeight: 50,
columnSpacing: 2,
horizontalMargin: 6.0,

                sortAscending: sort, 
   sortColumnIndex: indexColumn, 
                
columns: [
    DataColumn(
            
          label: Text("    ", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
 
     ),
       DataColumn(
 
          label: Text("Numero de Póliza", style: TextStyle(fontSize: 14,  color: Colors.black),),
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
 
          label: Text("Nombre de Asegurado", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
          onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
            indexColumn=2;
      });
      onSortColum2(columnIndex, ascending);
    },
     ),
     DataColumn(
          label: Text("Comisión", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
          indexColumn=3;
            sort = !sort;
      });
      onSortColum3(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Prima       ", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=4;
      });
      onSortColum4(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Ramo", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=5;
      });
     onSortColum5(columnIndex, ascending);
    },
         ),
  

     DataColumn(
 
          label: Text("Tipo Comprobante", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
          onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
            indexColumn=6;
      });
     onSortColum6(columnIndex, ascending);
    },
     ),
     DataColumn(
          label: Text("Importe Antes Impuesto", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
          indexColumn=7;
            sort = !sort;
      });
    onSortColum7(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("I.V.A Acreditado", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=8;
      });
      onSortColum8(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("I.V.A Retenido", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=9;
      });
     onSortColum9(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("I.S.R Retenido", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=10;
      });
      onSortColum10(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Importe después de Impuestos", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=11;
      });
      onSortColum11(columnIndex, ascending);
    },
         ),
               DataColumn(
          label: Text("Clave Única", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=12;
      });
      onSortColum12(columnIndex, ascending);
    },
         ),
                 DataColumn(
          label: Text("N Recibo", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=13;
      });
     onSortColum13(columnIndex, ascending);
    },
         ),
                   DataColumn(
          label: Text("Folio", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=14;
      });
      onSortColum14(columnIndex, ascending);
    },
         ),
     ],   
   rows:  searchResultVida.map(
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

               DataCell(
                Text(avenger.ramo),
                
              ),
        
              DataCell(
                Text(avenger.comprobante),
                
              ),
           DataCell(
                Text(avenger.importeAimpuestos.toString()),
             
              ),
               DataCell(
                Text(avenger.ivaAcreditado.toString()),
             
              ),
               DataCell(
                Text(avenger.ivaRetenido.toString()),
             
              ),
                DataCell(
                Text(avenger.isrRetenido.toString()),
             
              ),
            
                DataCell(
                Text(avenger.importeDimpuestos.toString()),
             
              ),
                 DataCell(
                Text(avenger.claveUnica),
             
              ),
                   DataCell(
                Text(avenger.nRecibo),
             
              ),
                   DataCell(
                Text(avenger.folio),
             
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
         scrollDirection: Axis.horizontal,
         physics: ScrollPhysics(),
         child: DataTable(
           
dataRowHeight: 50,
columnSpacing: 2,
horizontalMargin: 6.0,

                sortAscending: sort, 
   sortColumnIndex: indexColumn, 
                
columns: [
    DataColumn(
            
          label: Text("    ", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
 
     ),
       DataColumn(
 
          label: Text("Numero de Póliza", style: TextStyle(fontSize: 14,  color: Colors.black),),
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
 
          label: Text("Nombre de Asegurado", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
          onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
            indexColumn=2;
      });
      onSortColum2(columnIndex, ascending);
    },
     ),
     DataColumn(
          label: Text("Comisión", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
          indexColumn=3;
            sort = !sort;
      });
      onSortColum3(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Prima       ", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=4;
      });
      onSortColum4(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Ramo", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=5;
      });
     onSortColum5(columnIndex, ascending);
    },
         ),
  

     DataColumn(
 
          label: Text("Tipo Comprobante", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
          onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
            indexColumn=6;
      });
      onSortColum6(columnIndex, ascending);
    },
     ),
     DataColumn(
          label: Text("Importe Antes Impuesto", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
          indexColumn=7;
            sort = !sort;
      });
     onSortColum7(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("I.V.A Acreditado", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=8;
      });
     onSortColum8(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("I.V.A Retenido", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=9;
      });
      onSortColum9(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("I.S.R Retenido", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=10;
      });
     onSortColum10(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Importe después de Impuestos", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=11;
      });
     onSortColum11(columnIndex, ascending);
    },
         ),
               DataColumn(
          label: Text("Clave Única", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=12;
      });
     onSortColum12(columnIndex, ascending);
    },
         ),
                 DataColumn(
          label: Text("N Recibo", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=13;
      });
      onSortColum13(columnIndex, ascending);
    },
         ),
                   DataColumn(
          label: Text("Folio", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=14;
      });
     onSortColum14(columnIndex, ascending);
    },
         ),
     ],   
   rows:  searchResultSalud.map(
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

               DataCell(
                Text(avenger.ramo),
                
              ),
        
              DataCell(
                Text(avenger.comprobante),
                
              ),
           DataCell(
                Text(avenger.importeAimpuestos.toString()),
             
              ),
               DataCell(
                Text(avenger.ivaAcreditado.toString()),
             
              ),
               DataCell(
                Text(avenger.ivaRetenido.toString()),
             
              ),
                DataCell(
                Text(avenger.isrRetenido.toString()),
             
              ),
            
                DataCell(
                Text(avenger.importeDimpuestos.toString()),
             
              ),
                 DataCell(
                Text(avenger.claveUnica),
             
              ),
                   DataCell(
                Text(avenger.nRecibo),
             
              ),
                   DataCell(
                Text(avenger.folio),
             
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
         scrollDirection: Axis.horizontal,
         physics: ScrollPhysics(),
         child: DataTable(
           
dataRowHeight: 50,
columnSpacing: 2,
horizontalMargin: 6.0,

                sortAscending: sort, 
   sortColumnIndex: indexColumn, 
                
columns: [
    DataColumn(
            
          label: Text("    ", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
 
     ),
       DataColumn(
 
          label: Text("Numero de Póliza", style: TextStyle(fontSize: 14,  color: Colors.black),),
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
 
          label: Text("Nombre de Asegurado", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
          onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
            indexColumn=2;
      });
      onSortColum2(columnIndex, ascending);
    },
     ),
     DataColumn(
          label: Text("Comisión", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
          indexColumn=3;
            sort = !sort;
      });
      onSortColum3(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Prima       ", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=4;
      });
      onSortColum4(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Ramo", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=5;
      });
     onSortColum5(columnIndex, ascending);
    },
         ),
  

     DataColumn(
 
          label: Text("Tipo Comprobante", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
          onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
            indexColumn=6;
      });
     onSortColum6(columnIndex, ascending);
    },
     ),
     DataColumn(
          label: Text("Importe Antes Impuesto", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
          indexColumn=7;
            sort = !sort;
      });
     onSortColum7(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("I.V.A Acreditado", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=8;
      });
     onSortColum8(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("I.V.A Retenido", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=9;
      });
    onSortColum9(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("I.S.R Retenido", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=10;
      });
     onSortColum10(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Importe después de Impuestos", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=11;
      });
     onSortColum11(columnIndex, ascending);
    },
         ),
               DataColumn(
          label: Text("Clave Única", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=12;
      });
     onSortColum12(columnIndex, ascending);
    },
         ),
                 DataColumn(
          label: Text("N Recibo", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=13;
      });
     onSortColum13(columnIndex, ascending);
    },
         ),
                   DataColumn(
          label: Text("Folio", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=14;
      });
     onSortColum14(columnIndex, ascending);
    },
         ),
     ],   
   rows:  searchResultAutos.map(
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

               DataCell(
                Text(avenger.ramo),
                
              ),
        
              DataCell(
                Text(avenger.comprobante),
                
              ),
           DataCell(
                Text(avenger.importeAimpuestos.toString()),
             
              ),
               DataCell(
                Text(avenger.ivaAcreditado.toString()),
             
              ),
               DataCell(
                Text(avenger.ivaRetenido.toString()),
             
              ),
                DataCell(
                Text(avenger.isrRetenido.toString()),
             
              ),
            
                DataCell(
                Text(avenger.importeDimpuestos.toString()),
             
              ),
                 DataCell(
                Text(avenger.claveUnica),
             
              ),
                   DataCell(
                Text(avenger.nRecibo),
             
              ),
                   DataCell(
                Text(avenger.folio),
             
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
         scrollDirection: Axis.horizontal,
         physics: ScrollPhysics(),
         child: DataTable(
           
dataRowHeight: 50,
columnSpacing: 2,
horizontalMargin: 6.0,

                sortAscending: sort, 
   sortColumnIndex: indexColumn, 
                
columns: [
    DataColumn(
            
          label: Text("    ", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
 
     ),
       DataColumn(
 
          label: Text("Numero de Póliza", style: TextStyle(fontSize: 14,  color: Colors.black),),
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
 
          label: Text("Nombre de Asegurado", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
          onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
            indexColumn=2;
      });
      onSortColum2(columnIndex, ascending);
    },
     ),
     DataColumn(
          label: Text("Comisión", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
          indexColumn=3;
            sort = !sort;
      });
      onSortColum3(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Prima       ", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=4;
      });
      onSortColum4(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Ramo", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=5;
      });
     onSortColum5(columnIndex, ascending);
    },
         ),
  

     DataColumn(
 
          label: Text("Tipo Comprobante", style: TextStyle(fontSize: 14,  color: Colors.black),),
          numeric: false,
          onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
            indexColumn=6;
      });
     onSortColum6(columnIndex, ascending);
    },
     ),
     DataColumn(
          label: Text("Importe Antes Impuesto", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
          indexColumn=7;
            sort = !sort;
      });
     onSortColum7(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("I.V.A Acreditado", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=8;
      });
     onSortColum8(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("I.V.A Retenido", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=9;
      });
      onSortColum9(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("I.S.R Retenido", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=10;
      });
     onSortColum10(columnIndex, ascending);
    },
         ),
             DataColumn(
          label: Text("Importe después de Impuestos", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=11;
      });
     onSortColum11(columnIndex, ascending);
    },
         ),
               DataColumn(
          label: Text("Clave Única", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=12;
      });
     onSortColum12(columnIndex, ascending);
    },
         ),
                 DataColumn(
          label: Text("N Recibo", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=13;
      });
      onSortColum13(columnIndex, ascending);
    },
         ),
                   DataColumn(
          label: Text("Folio", style: TextStyle(fontSize: 14, color: Colors.black),),
          numeric: false,
             onSort:              (columnIndex, ascending) { 
      setState(() {
            sort = !sort;
             indexColumn=14;
      });
      onSortColum14(columnIndex, ascending);
    },
         ),
     ],   
   rows:  searchResultDanos.map(
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

               DataCell(
                Text(avenger.ramo),
                
              ),
        
              DataCell(
                Text(avenger.comprobante),
                
              ),
           DataCell(
                Text(avenger.importeAimpuestos.toString()),
             
              ),
               DataCell(
                Text(avenger.ivaAcreditado.toString()),
             
              ),
               DataCell(
                Text(avenger.ivaRetenido.toString()),
             
              ),
                DataCell(
                Text(avenger.isrRetenido.toString()),
             
              ),
            
                DataCell(
                Text(avenger.importeDimpuestos.toString()),
             
              ),
                 DataCell(
                Text(avenger.claveUnica),
             
              ),
                   DataCell(
                Text(avenger.nRecibo),
             
              ),
                   DataCell(
                Text(avenger.folio),
             
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
    searchResultVida.sort((a, b) => a.poliza.compareTo(b.poliza));
     searchResultSalud.sort((a, b) => a.poliza.compareTo(b.poliza));
     searchResultAutos.sort((a, b) => a.poliza.compareTo(b.poliza));
     searchResultDanos.sort((a, b) => a.poliza.compareTo(b.poliza));

    } else {
      searchResult.sort((a, b) => b.poliza.compareTo(a.poliza));
 searchResultVida.sort((a, b) => b.poliza.compareTo(a.poliza));
  searchResultSalud.sort((a, b) => b.poliza.compareTo(a.poliza));
   searchResultAutos.sort((a, b) => b.poliza.compareTo(a.poliza));
    searchResultDanos.sort((a, b) => b.poliza.compareTo(a.poliza));
    }
  }
} 

  onSortColum2(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 2) {
    if (ascending) {
    searchResult.sort((a, b) => a.asegurado.compareTo(b.asegurado));
    searchResultVida.sort((a, b) => a.asegurado.compareTo(b.asegurado));
     searchResultSalud.sort((a, b) => a.asegurado.compareTo(b.asegurado));
     searchResultAutos.sort((a, b) => a.asegurado.compareTo(b.asegurado));
     searchResultDanos.sort((a, b) => a.asegurado.compareTo(b.asegurado));

    } else {
      searchResult.sort((a, b) => b.asegurado.compareTo(a.asegurado));
 searchResultVida.sort((a, b) => b.asegurado.compareTo(a.asegurado));
  searchResultSalud.sort((a, b) => b.asegurado.compareTo(a.asegurado));
   searchResultAutos.sort((a, b) => b.asegurado.compareTo(a.asegurado));
    searchResultDanos.sort((a, b) => b.asegurado.compareTo(a.asegurado));
    }
  }
} 

  onSortColum3(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 3) {
    if (ascending) {
    searchResult.sort((a, b) => a.comision.compareTo(b.comision));
    searchResultVida.sort((a, b) => a.comision.compareTo(b.comision));
     searchResultSalud.sort((a, b) => a.comision.compareTo(b.comision));
     searchResultAutos.sort((a, b) => a.comision.compareTo(b.comision));
     searchResultDanos.sort((a, b) => a.comision.compareTo(b.comision));

    } else {
      searchResult.sort((a, b) => b.comision.compareTo(a.comision));
 searchResultVida.sort((a, b) => b.comision.compareTo(a.comision));
  searchResultSalud.sort((a, b) => b.comision.compareTo(a.comision));
   searchResultAutos.sort((a, b) => b.comision.compareTo(a.comision));
    searchResultDanos.sort((a, b) => b.comision.compareTo(a.comision));
    }
  }
} 

  onSortColum4(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 4) {
    if (ascending) {
    searchResult.sort((a, b) => a.prima.compareTo(b.prima));
    searchResultVida.sort((a, b) => a.prima.compareTo(b.prima));
     searchResultSalud.sort((a, b) => a.prima.compareTo(b.prima));
     searchResultAutos.sort((a, b) => a.prima.compareTo(b.prima));
     searchResultDanos.sort((a, b) => a.prima.compareTo(b.prima));

    } else {
      searchResult.sort((a, b) => b.prima.compareTo(a.prima));
 searchResultVida.sort((a, b) => b.prima.compareTo(a.prima));
  searchResultSalud.sort((a, b) => b.prima.compareTo(a.prima));
   searchResultAutos.sort((a, b) => b.prima.compareTo(a.prima));
    searchResultDanos.sort((a, b) => b.prima.compareTo(a.prima));
    }
  }
} 

  onSortColum5(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 5) {
    if (ascending) {
    searchResult.sort((a, b) => a.ramo.compareTo(b.ramo));
    searchResultVida.sort((a, b) => a.ramo.compareTo(b.ramo));
     searchResultSalud.sort((a, b) => a.ramo.compareTo(b.ramo));
     searchResultAutos.sort((a, b) => a.ramo.compareTo(b.ramo));
     searchResultDanos.sort((a, b) => a.ramo.compareTo(b.ramo));

    } else {
      searchResult.sort((a, b) => b.ramo.compareTo(a.ramo));
 searchResultVida.sort((a, b) => b.ramo.compareTo(a.ramo));
  searchResultSalud.sort((a, b) => b.ramo.compareTo(a.ramo));
   searchResultAutos.sort((a, b) => b.ramo.compareTo(a.ramo));
    searchResultDanos.sort((a, b) => b.ramo.compareTo(a.ramo));
    }
  }
} 


  onSortColum6(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 6) {
    if (ascending) {
    searchResult.sort((a, b) => a.comprobante.compareTo(b.comprobante));
    searchResultVida.sort((a, b) => a.comprobante.compareTo(b.comprobante));
     searchResultSalud.sort((a, b) => a.comprobante.compareTo(b.comprobante));
     searchResultAutos.sort((a, b) => a.comprobante.compareTo(b.comprobante));
     searchResultDanos.sort((a, b) => a.comprobante.compareTo(b.comprobante));

    } else {
      searchResult.sort((a, b) => b.comprobante.compareTo(a.comprobante));
 searchResultVida.sort((a, b) => b.comprobante.compareTo(a.comprobante));
  searchResultSalud.sort((a, b) => b.comprobante.compareTo(a.comprobante));
   searchResultAutos.sort((a, b) => b.comprobante.compareTo(a.comprobante));
    searchResultDanos.sort((a, b) => b.comprobante.compareTo(a.comprobante));
    }
  }
} 


  onSortColum7(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 7) {
    if (ascending) {
    searchResult.sort((a, b) => a.importeAimpuestos.compareTo(b.importeAimpuestos));
    searchResultVida.sort((a, b) => a.importeAimpuestos.compareTo(b.importeAimpuestos));
     searchResultSalud.sort((a, b) => a.importeAimpuestos.compareTo(b.importeAimpuestos));
     searchResultAutos.sort((a, b) => a.importeAimpuestos.compareTo(b.importeAimpuestos));
     searchResultDanos.sort((a, b) => a.importeAimpuestos.compareTo(b.importeAimpuestos));

    } else {
      searchResult.sort((a, b) => b.importeAimpuestos.compareTo(a.importeAimpuestos));
 searchResultVida.sort((a, b) => b.importeAimpuestos.compareTo(a.importeAimpuestos));
  searchResultSalud.sort((a, b) => b.importeAimpuestos.compareTo(a.importeAimpuestos));
   searchResultAutos.sort((a, b) => b.importeAimpuestos.compareTo(a.importeAimpuestos));
    searchResultDanos.sort((a, b) => b.importeAimpuestos.compareTo(a.importeAimpuestos));
    }
  }
} 


  onSortColum8(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 8) {
    if (ascending) {
    searchResult.sort((a, b) => a.ivaAcreditado.compareTo(b.ivaAcreditado));
    searchResultVida.sort((a, b) => a.ivaAcreditado.compareTo(b.ivaAcreditado));
     searchResultSalud.sort((a, b) => a.ivaAcreditado.compareTo(b.ivaAcreditado));
     searchResultAutos.sort((a, b) => a.ivaAcreditado.compareTo(b.ivaAcreditado));
     searchResultDanos.sort((a, b) => a.ivaAcreditado.compareTo(b.ivaAcreditado));

    } else {
      searchResult.sort((a, b) => b.ivaAcreditado.compareTo(a.ivaAcreditado));
 searchResultVida.sort((a, b) => b.ivaAcreditado.compareTo(a.ivaAcreditado));
  searchResultSalud.sort((a, b) => b.ivaAcreditado.compareTo(a.ivaAcreditado));
   searchResultAutos.sort((a, b) => b.ivaAcreditado.compareTo(a.ivaAcreditado));
    searchResultDanos.sort((a, b) => b.ivaAcreditado.compareTo(a.ivaAcreditado));
    }
  }
} 


  onSortColum9(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 9) {
    if (ascending) {
    searchResult.sort((a, b) => a.ivaRetenido.compareTo(b.ivaRetenido));
    searchResultVida.sort((a, b) => a.ivaRetenido.compareTo(b.ivaRetenido));
     searchResultSalud.sort((a, b) => a.ivaRetenido.compareTo(b.ivaRetenido));
     searchResultAutos.sort((a, b) => a.ivaRetenido.compareTo(b.ivaRetenido));
     searchResultDanos.sort((a, b) => a.ivaRetenido.compareTo(b.ivaRetenido));

    } else {
      searchResult.sort((a, b) => b.ivaRetenido.compareTo(a.ivaRetenido));
 searchResultVida.sort((a, b) => b.ivaRetenido.compareTo(a.ivaRetenido));
  searchResultSalud.sort((a, b) => b.ivaRetenido.compareTo(a.ivaRetenido));
   searchResultAutos.sort((a, b) => b.ivaRetenido.compareTo(a.ivaRetenido));
    searchResultDanos.sort((a, b) => b.ivaRetenido.compareTo(a.ivaRetenido));
    }
  }
} 


  onSortColum10(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 10) {
    if (ascending) {
    searchResult.sort((a, b) => a.isrRetenido.compareTo(b.isrRetenido));
    searchResultVida.sort((a, b) => a.isrRetenido.compareTo(b.isrRetenido));
     searchResultSalud.sort((a, b) => a.isrRetenido.compareTo(b.isrRetenido));
     searchResultAutos.sort((a, b) => a.isrRetenido.compareTo(b.isrRetenido));
     searchResultDanos.sort((a, b) => a.isrRetenido.compareTo(b.isrRetenido));

    } else {
      searchResult.sort((a, b) => b.isrRetenido.compareTo(a.isrRetenido));
 searchResultVida.sort((a, b) => b.isrRetenido.compareTo(a.isrRetenido));
  searchResultSalud.sort((a, b) => b.isrRetenido.compareTo(a.isrRetenido));
   searchResultAutos.sort((a, b) => b.isrRetenido.compareTo(a.isrRetenido));
    searchResultDanos.sort((a, b) => b.isrRetenido.compareTo(a.isrRetenido));
    }
  }
} 


  onSortColum11(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 11) {
    if (ascending) {
    searchResult.sort((a, b) => a.importeDimpuestos.compareTo(b.importeDimpuestos));
    searchResultVida.sort((a, b) => a.importeDimpuestos.compareTo(b.importeDimpuestos));
     searchResultSalud.sort((a, b) => a.importeDimpuestos.compareTo(b.importeDimpuestos));
     searchResultAutos.sort((a, b) => a.importeDimpuestos.compareTo(b.importeDimpuestos));
     searchResultDanos.sort((a, b) => a.importeDimpuestos.compareTo(b.importeDimpuestos));

    } else {
      searchResult.sort((a, b) => b.importeDimpuestos.compareTo(a.importeDimpuestos));
 searchResultVida.sort((a, b) => b.importeDimpuestos.compareTo(a.importeDimpuestos));
  searchResultSalud.sort((a, b) => b.importeDimpuestos.compareTo(a.importeDimpuestos));
   searchResultAutos.sort((a, b) => b.importeDimpuestos.compareTo(a.importeDimpuestos));
    searchResultDanos.sort((a, b) => b.importeDimpuestos.compareTo(a.importeDimpuestos));
    }
  }
} 


  onSortColum12(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 12) {
    if (ascending) {
    searchResult.sort((a, b) => a.claveUnica.compareTo(b.claveUnica));
    searchResultVida.sort((a, b) => a.claveUnica.compareTo(b.claveUnica));
     searchResultSalud.sort((a, b) => a.claveUnica.compareTo(b.claveUnica));
     searchResultAutos.sort((a, b) => a.claveUnica.compareTo(b.claveUnica));
     searchResultDanos.sort((a, b) => a.claveUnica.compareTo(b.claveUnica));

    } else {
      searchResult.sort((a, b) => b.claveUnica.compareTo(a.claveUnica));
 searchResultVida.sort((a, b) => b.claveUnica.compareTo(a.claveUnica));
  searchResultSalud.sort((a, b) => b.claveUnica.compareTo(a.claveUnica));
   searchResultAutos.sort((a, b) => b.claveUnica.compareTo(a.claveUnica));
    searchResultDanos.sort((a, b) => b.claveUnica.compareTo(a.claveUnica));
    }
  }
} 


  onSortColum13(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 13) {
    if (ascending) {
    searchResult.sort((a, b) => a.nRecibo.compareTo(b.nRecibo));
    searchResultVida.sort((a, b) => a.nRecibo.compareTo(b.nRecibo));
     searchResultSalud.sort((a, b) => a.nRecibo.compareTo(b.nRecibo));
     searchResultAutos.sort((a, b) => a.nRecibo.compareTo(b.nRecibo));
     searchResultDanos.sort((a, b) => a.nRecibo.compareTo(b.nRecibo));

    } else {
      searchResult.sort((a, b) => b.nRecibo.compareTo(a.nRecibo));
 searchResultVida.sort((a, b) => b.nRecibo.compareTo(a.nRecibo));
  searchResultSalud.sort((a, b) => b.nRecibo.compareTo(a.nRecibo));
   searchResultAutos.sort((a, b) => b.nRecibo.compareTo(a.nRecibo));
    searchResultDanos.sort((a, b) => b.nRecibo.compareTo(a.nRecibo));
    }
  }
} 

  onSortColum14(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 14) {
    if (ascending) {
    searchResult.sort((a, b) => a.folio.compareTo(b.folio));
    searchResultVida.sort((a, b) => a.folio.compareTo(b.folio));
     searchResultSalud.sort((a, b) => a.folio.compareTo(b.folio));
     searchResultAutos.sort((a, b) => a.folio.compareTo(b.folio));
     searchResultDanos.sort((a, b) => a.folio.compareTo(b.folio));

    } else {
      searchResult.sort((a, b) => b.folio.compareTo(a.folio));
 searchResultVida.sort((a, b) => b.folio.compareTo(a.folio));
  searchResultSalud.sort((a, b) => b.folio.compareTo(a.folio));
   searchResultAutos.sort((a, b) => b.folio.compareTo(a.folio));
    searchResultDanos.sort((a, b) => b.folio.compareTo(a.folio));
    }
  }
} 


}


