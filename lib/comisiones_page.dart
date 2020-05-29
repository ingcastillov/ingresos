import 'package:flutter/material.dart';
import 'package:ingresos/Commons/TituloColorComisiones.dart';
import 'package:ingresos/saldo_disponible.dart';

import 'filter_comisiones.dart';

 class Avengers{

String tipo;
String poliza;
String asegurado;
double comision;
double prima;
String ramo;
String comprobante;
double importeAimpuestos;
double ivaAcreditado;
double ivaRetenido;
double isrRetenido;
double importeDimpuestos;
String claveUnica;
String nRecibo;
String folio;






Avengers({this.tipo, this.poliza, this.asegurado, this.comision,
 this.prima,
 this.ramo,
 this.comprobante,
 this.importeAimpuestos,
 this.ivaAcreditado,
 this.ivaRetenido,
 this.isrRetenido,
 this.importeDimpuestos,
 this.claveUnica,
 this.nRecibo,
 this.folio

});

static List<Avengers> getAvengers(){
  return <Avengers>[
   Avengers(tipo: 'vida', poliza: '323123', asegurado: 'Rex Hernandez', comision: 2222, prima: 12,
  ramo: 'Vida', comprobante: '323', claveUnica: '434', folio: '555' , importeAimpuestos: 5443, importeDimpuestos: 335,
  isrRetenido: 4455, ivaAcreditado: 234234, ivaRetenido: 555332, nRecibo: '0123'
   ),
      Avengers(tipo: 'salud', poliza: '231412', asegurado: 'Luis Camilla', comision: 3333, prima: 122,
  ramo: 'Salud', comprobante: '12313', claveUnica: '123123213', folio: '12312312' , importeAimpuestos: 123123, importeDimpuestos: 123123123,
  isrRetenido: 123123, ivaAcreditado: 123123213, ivaRetenido: 123213, nRecibo: '0124'
   ),
      Avengers(tipo: 'autos', poliza: '434312', asegurado: 'Daniel Soto', comision: 54354, prima: 1222,
  ramo: 'Autos', comprobante: '12313', claveUnica: '123123213', folio: '12312312' , importeAimpuestos: 54543, importeDimpuestos: 64545,
  isrRetenido: 5435, ivaAcreditado: 345435, ivaRetenido: 345435, nRecibo: '015'
   ),
   Avengers(tipo: 'danos', poliza: '434223', asegurado: 'Dano Hernandez', comision: 6666, prima: 3424234,
  ramo: 'Daños', comprobante: '12313', claveUnica: '4324324', folio: '324324' , importeAimpuestos: 12313243223, importeDimpuestos: 342432,
  isrRetenido: 544323, ivaAcreditado: 324234, ivaRetenido: 1234234, nRecibo: '-16'
   ),

      Avengers(tipo: 'vida', poliza: '323123', asegurado: 'Javier Hernandez', comision: 2222, prima: 12,
  ramo: 'Vida', comprobante: '323', claveUnica: '434', folio: '12324' , importeAimpuestos: 5443, importeDimpuestos: 335,
  isrRetenido: 4455, ivaAcreditado: 234234, ivaRetenido: 555332, nRecibo: '0123'
   ),
      Avengers(tipo: 'salud', poliza: '231412', asegurado: 'Luis Altamirante', comision: 3333, prima: 122,
  ramo: 'Salud', comprobante: '12313', claveUnica: '123123213', folio: '12312312' , importeAimpuestos: 123123, importeDimpuestos: 123123123,
  isrRetenido: 123123, ivaAcreditado: 123123213, ivaRetenido: 123213, nRecibo: '0124'
   ),
      Avengers(tipo: 'autos', poliza: '434312', asegurado: 'Deqs Soto', comision: 54354, prima: 1222,
  ramo: 'Autos', comprobante: '12313', claveUnica: '123123213', folio: '12312312' , importeAimpuestos: 54543, importeDimpuestos: 64545,
  isrRetenido: 5435, ivaAcreditado: 345435, ivaRetenido: 345435, nRecibo: '015'
   ),
   Avengers(tipo: 'danos', poliza: '434223', asegurado: 'Olso Hernandez', comision: 4324324, prima: 423432,
  ramo: 'Daños', comprobante: '12313', claveUnica: '4324324', folio: '234234' , importeAimpuestos: 4324, importeDimpuestos: 23343,
  isrRetenido: 543434, ivaAcreditado: 234324432, ivaRetenido: 1234234, nRecibo: '-54355'
   ),
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
   rows:  comisionesVida.map(
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
   rows:  comisionesSalud.map(
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
   rows:  comisionesAutos.map(
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
   rows:  comisionesDanos.map(
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

  onSortColum5(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 5) {
    if (ascending) {
    comisiones.sort((a, b) => a.ramo.compareTo(b.ramo));
     comisionesVida.sort((a, b) => a.ramo.compareTo(b.ramo));
     comisionesSalud.sort((a, b) => a.ramo.compareTo(b.ramo));
     comisionesAutos.sort((a, b) => a.ramo.compareTo(b.ramo));
     comisionesDanos.sort((a, b) => a.ramo.compareTo(b.ramo));
    } else {
      comisiones.sort((a, b) => b.ramo.compareTo(a.ramo));
      comisionesVida.sort((a, b) => b.ramo.compareTo(a.ramo));
      comisionesSalud.sort((a, b) => b.ramo.compareTo(a.ramo));
       comisionesAutos.sort((a, b) => b.ramo.compareTo(a.ramo));
        comisionesDanos.sort((a, b) => b.ramo.compareTo(a.ramo));
    }
  }
} 


  onSortColum6(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 6) {
    if (ascending) {
    comisiones.sort((a, b) => a.comprobante.compareTo(b.comprobante));
     comisionesVida.sort((a, b) => a.comprobante.compareTo(b.comprobante));
     comisionesSalud.sort((a, b) => a.comprobante.compareTo(b.comprobante));
     comisionesAutos.sort((a, b) => a.comprobante.compareTo(b.comprobante));
     comisionesDanos.sort((a, b) => a.comprobante.compareTo(b.comprobante));
    } else {
      comisiones.sort((a, b) => b.comprobante.compareTo(a.comprobante));
      comisionesVida.sort((a, b) => b.comprobante.compareTo(a.comprobante));
      comisionesSalud.sort((a, b) => b.comprobante.compareTo(a.comprobante));
       comisionesAutos.sort((a, b) => b.comprobante.compareTo(a.comprobante));
        comisionesDanos.sort((a, b) => b.comprobante.compareTo(a.comprobante));
    }
  }
} 


  onSortColum7(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 7) {
    if (ascending) {
    comisiones.sort((a, b) => a.importeAimpuestos.compareTo(b.importeAimpuestos));
     comisionesVida.sort((a, b) => a.importeAimpuestos.compareTo(b.importeAimpuestos));
     comisionesSalud.sort((a, b) => a.importeAimpuestos.compareTo(b.importeAimpuestos));
     comisionesAutos.sort((a, b) => a.importeAimpuestos.compareTo(b.importeAimpuestos));
     comisionesDanos.sort((a, b) => a.importeAimpuestos.compareTo(b.importeAimpuestos));
    } else {
      comisiones.sort((a, b) => b.importeAimpuestos.compareTo(a.importeAimpuestos));
      comisionesVida.sort((a, b) => b.importeAimpuestos.compareTo(a.importeAimpuestos));
      comisionesSalud.sort((a, b) => b.importeAimpuestos.compareTo(a.importeAimpuestos));
       comisionesAutos.sort((a, b) => b.importeAimpuestos.compareTo(a.importeAimpuestos));
        comisionesDanos.sort((a, b) => b.importeAimpuestos.compareTo(a.importeAimpuestos));
    }
  }
} 


  onSortColum8(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 8) {
    if (ascending) {
    comisiones.sort((a, b) => a.ivaAcreditado.compareTo(b.ivaAcreditado));
     comisionesVida.sort((a, b) => a.ivaAcreditado.compareTo(b.ivaAcreditado));
     comisionesSalud.sort((a, b) => a.ivaAcreditado.compareTo(b.ivaAcreditado));
     comisionesAutos.sort((a, b) => a.ivaAcreditado.compareTo(b.ivaAcreditado));
     comisionesDanos.sort((a, b) => a.ivaAcreditado.compareTo(b.ivaAcreditado));
    } else {
      comisiones.sort((a, b) => b.ivaAcreditado.compareTo(a.ivaAcreditado));
      comisionesVida.sort((a, b) => b.ivaAcreditado.compareTo(a.ivaAcreditado));
      comisionesSalud.sort((a, b) => b.ivaAcreditado.compareTo(a.ivaAcreditado));
       comisionesAutos.sort((a, b) => b.ivaAcreditado.compareTo(a.ivaAcreditado));
        comisionesDanos.sort((a, b) => b.ivaAcreditado.compareTo(a.ivaAcreditado));
    }
  }
} 


  onSortColum9(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 9) {
    if (ascending) {
    comisiones.sort((a, b) => a.ivaRetenido.compareTo(b.ivaRetenido));
     comisionesVida.sort((a, b) => a.ivaRetenido.compareTo(b.ivaRetenido));
     comisionesSalud.sort((a, b) => a.ivaRetenido.compareTo(b.ivaRetenido));
     comisionesAutos.sort((a, b) => a.ivaRetenido.compareTo(b.ivaRetenido));
     comisionesDanos.sort((a, b) => a.ivaRetenido.compareTo(b.ivaRetenido));
    } else {
      comisiones.sort((a, b) => b.ivaRetenido.compareTo(a.ivaRetenido));
      comisionesVida.sort((a, b) => b.ivaRetenido.compareTo(a.ivaRetenido));
      comisionesSalud.sort((a, b) => b.ivaRetenido.compareTo(a.ivaRetenido));
       comisionesAutos.sort((a, b) => b.ivaRetenido.compareTo(a.ivaRetenido));
        comisionesDanos.sort((a, b) => b.ivaRetenido.compareTo(a.ivaRetenido));
    }
  }
} 


  onSortColum10(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 10) {
    if (ascending) {
    comisiones.sort((a, b) => a.isrRetenido.compareTo(b.isrRetenido));
     comisionesVida.sort((a, b) => a.isrRetenido.compareTo(b.isrRetenido));
     comisionesSalud.sort((a, b) => a.isrRetenido.compareTo(b.isrRetenido));
     comisionesAutos.sort((a, b) => a.isrRetenido.compareTo(b.isrRetenido));
     comisionesDanos.sort((a, b) => a.isrRetenido.compareTo(b.isrRetenido));
    } else {
      comisiones.sort((a, b) => b.isrRetenido.compareTo(a.isrRetenido));
      comisionesVida.sort((a, b) => b.isrRetenido.compareTo(a.isrRetenido));
      comisionesSalud.sort((a, b) => b.isrRetenido.compareTo(a.isrRetenido));
       comisionesAutos.sort((a, b) => b.isrRetenido.compareTo(a.isrRetenido));
        comisionesDanos.sort((a, b) => b.isrRetenido.compareTo(a.isrRetenido));
    }
  }
} 


  onSortColum11(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 11) {
    if (ascending) {
    comisiones.sort((a, b) => a.importeDimpuestos.compareTo(b.importeDimpuestos));
     comisionesVida.sort((a, b) => a.importeDimpuestos.compareTo(b.importeDimpuestos));
     comisionesSalud.sort((a, b) => a.importeDimpuestos.compareTo(b.importeDimpuestos));
     comisionesAutos.sort((a, b) => a.importeDimpuestos.compareTo(b.importeDimpuestos));
     comisionesDanos.sort((a, b) => a.importeDimpuestos.compareTo(b.importeDimpuestos));
    } else {
      comisiones.sort((a, b) => b.importeDimpuestos.compareTo(a.importeDimpuestos));
      comisionesVida.sort((a, b) => b.importeDimpuestos.compareTo(a.importeDimpuestos));
      comisionesSalud.sort((a, b) => b.importeDimpuestos.compareTo(a.importeDimpuestos));
       comisionesAutos.sort((a, b) => b.importeDimpuestos.compareTo(a.importeDimpuestos));
        comisionesDanos.sort((a, b) => b.importeDimpuestos.compareTo(a.importeDimpuestos));
    }
  }
} 


  onSortColum12(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 12) {
    if (ascending) {
    comisiones.sort((a, b) => a.claveUnica.compareTo(b.claveUnica));
     comisionesVida.sort((a, b) => a.claveUnica.compareTo(b.claveUnica));
     comisionesSalud.sort((a, b) => a.claveUnica.compareTo(b.claveUnica));
     comisionesAutos.sort((a, b) => a.claveUnica.compareTo(b.claveUnica));
     comisionesDanos.sort((a, b) => a.claveUnica.compareTo(b.claveUnica));
    } else {
      comisiones.sort((a, b) => b.claveUnica.compareTo(a.claveUnica));
      comisionesVida.sort((a, b) => b.claveUnica.compareTo(a.claveUnica));
      comisionesSalud.sort((a, b) => b.claveUnica.compareTo(a.claveUnica));
       comisionesAutos.sort((a, b) => b.claveUnica.compareTo(a.claveUnica));
        comisionesDanos.sort((a, b) => b.claveUnica.compareTo(a.claveUnica));
    }
  }
} 


  onSortColum13(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 13) {
    if (ascending) {
    comisiones.sort((a, b) => a.nRecibo.compareTo(b.nRecibo));
     comisionesVida.sort((a, b) => a.nRecibo.compareTo(b.nRecibo));
     comisionesSalud.sort((a, b) => a.nRecibo.compareTo(b.nRecibo));
     comisionesAutos.sort((a, b) => a.nRecibo.compareTo(b.nRecibo));
     comisionesDanos.sort((a, b) => a.nRecibo.compareTo(b.nRecibo));
    } else {
      comisiones.sort((a, b) => b.nRecibo.compareTo(a.nRecibo));
      comisionesVida.sort((a, b) => b.nRecibo.compareTo(a.nRecibo));
      comisionesSalud.sort((a, b) => b.nRecibo.compareTo(a.nRecibo));
       comisionesAutos.sort((a, b) => b.nRecibo.compareTo(a.nRecibo));
        comisionesDanos.sort((a, b) => b.nRecibo.compareTo(a.nRecibo));
    }
  }
} 

  onSortColum14(int columnIndex, bool ascending) {
    setState(() {
      
    });
  if (columnIndex == 14) {
    if (ascending) {
    comisiones.sort((a, b) => a.folio.compareTo(b.folio));
     comisionesVida.sort((a, b) => a.folio.compareTo(b.folio));
     comisionesSalud.sort((a, b) => a.folio.compareTo(b.folio));
     comisionesAutos.sort((a, b) => a.folio.compareTo(b.folio));
     comisionesDanos.sort((a, b) => a.folio.compareTo(b.folio));
    } else {
      comisiones.sort((a, b) => b.folio.compareTo(a.folio));
      comisionesVida.sort((a, b) => b.folio.compareTo(a.folio));
      comisionesSalud.sort((a, b) => b.folio.compareTo(a.folio));
       comisionesAutos.sort((a, b) => b.folio.compareTo(a.folio));
        comisionesDanos.sort((a, b) => b.folio.compareTo(a.folio));
    }
  }
} 

}


