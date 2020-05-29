import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ingresos/Commons/DesgloseFactura.dart';

import 'package:ingresos/alerta_factura.dart';
import 'package:ingresos/facturacion_page_buzono.dart';
import 'package:ingresos/saldo_disponible.dart';

class FacturacionPage extends StatefulWidget {
  @override
  _FacturacionPageState createState() => _FacturacionPageState();
}

class _FacturacionPageState extends State<FacturacionPage> {
 List<FacturasNotas> searchResult;
    List<FacturasNotas> searchResultNoVida;  
    List<FacturasNotas> searchResultVida;  
     List<FacturasNotas> searchResultVidaNotes;  
      List<FacturasNotas> searchResultNotesNoVida;  
      bool enviadoE=false;

  bool ivaF=false;
  bool factur=false;

    @override
  void initState() {
    super.initState();

  
     searchResult = FacturasNotas.getFacturas();
      searchResultVida = FacturasNotas.getFacturas().where((i) => i.clase.contains('vida')).where((i) => i.tipo.contains('factura')).toList();
      searchResultNoVida = FacturasNotas.getFacturas().where((i) => i.clase.contains('muerte')).where((i) => i.tipo.contains('factura')).toList();
    searchResultNotesNoVida = FacturasNotas.getFacturas().where((i) => i.clase.contains('muerte')).where((i) => i.tipo.contains('notas')).toList();
   searchResultVidaNotes = FacturasNotas.getFacturas().where((i) => i.clase.contains('vida')).where((i) => i.tipo.contains('notas')).toList();

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
           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SaldoDisponible()),
  );
            }),
        centerTitle: true,
        title: Text(
          'Datos de Facturación',
          style: TextStyle(color: Colors.blueGrey),
        ),
      ),

   /*    body: Column(

        children: <Widget>[
         periodoFacturar(),
         desgloseFactura(),      
        ],
      ),  */
     
     body:  ListView(
       children: <Widget>[
         Container(
           color: Colors.white,
           child: DataTable(
             columnSpacing: 15,
             columns: [
             DataColumn(label: Row(
               children: <Widget>[
                 Icon(Icons.calendar_today, color: Color.fromRGBO(10, 48, 136, 1) ,),
                 Text('  Periodo a Facturar', style: TextStyle(color: Color.fromRGBO(10, 48, 136, 1), fontSize: 18)),
               ],
             )),
              DataColumn(label: Text(''))
           ], 
           rows: [
                        DataRow(cells: <DataCell>[
              DataCell(Row(
              

                children: <Widget>[
     Switch(value: ivaF, onChanged: (value){setState((){});ivaF=value;}, activeColor: Colors.orange,),
                  Text('I.V.A Fronterizo', style: TextStyle(fontSize: 14, color: Colors.black87),),
                ],
              )),
              DataCell(Text('8%', style: TextStyle( fontSize: 16, color: Color.fromRGBO(10, 48, 136, 1)))),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('Estatus de facturación', style: TextStyle(fontSize: 15, color: Colors.black87))),
              DataCell(Text('Reservado', style: TextStyle( fontSize: 16, color: Color.fromRGBO(10, 48, 136, 1)))),
            ]),
                  DataRow(cells: <DataCell>[
              DataCell(Text('Fecha de Inicio', style: TextStyle(fontSize: 15, color: Colors.black87))),
              DataCell(Text('06/04/24', style: TextStyle( fontSize: 16, color: Color.fromRGBO(10, 48, 136, 1)))),
            ]),
                  DataRow(cells: <DataCell>[
              DataCell(Text('Fecha de Fin', style: TextStyle(fontSize: 15, color: Colors.black87))),
              DataCell(Text('06/04/24', style: TextStyle( fontSize: 16, color: Color.fromRGBO(10, 48, 136, 1)))),
            ]),
                        DataRow(cells: <DataCell>[
              DataCell(Text('Numero de dias', style: TextStyle(fontSize: 15, color: Colors.black87))),
              DataCell(Text('29', style: TextStyle( fontSize: 16, color: Color.fromRGBO(10, 48, 136, 1)))),
            ]),
                        DataRow(cells: <DataCell>[
              DataCell(Text('Pago', style: TextStyle(fontSize: 15, color: Colors.black87))),
              DataCell(Text('76.24', style: TextStyle( fontSize: 16, color: Color.fromRGBO(10, 48, 136, 1)))),
            ]),
           ]),
         ),
         Container(
           height: 100000,
           child: desgloseFactura()
           ),
     
       ],
     ), 

   /*   body: Container(
           height: 5000,
           child: desgloseFactura()), */
    );


  }

    Widget periodoFacturar(){
      final size = MediaQuery.of(context).size;
    return Column(
     
      
      children: <Widget>[
        Container(child: Text(''),),
          Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            leading: Icon(Icons.calendar_today, color: Color.fromRGBO(10, 48, 136, 1),),
            title: Text('Periodo a Facturar', style: TextStyle(color: Color.fromRGBO(10, 48, 136, 1), fontSize: 18),),
          ),
        ),

         Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 5),
            leading: Row(
              children: <Widget>[
                Switch(value: ivaF, onChanged: (value){
                  setState(() {
                  });
                  ivaF=value;
               
                },
                activeColor: Colors.deepOrangeAccent,
                ),
                Text('I.V.A Fronterizo', style: TextStyle(fontSize: 17, color: Colors.black87),),
              ],
            ),
         
            trailing:  Container(
                alignment: Alignment.centerRight,
              child: Text('8%', style: TextStyle( fontSize: 16, color: Color.fromRGBO(10, 48, 136, 1)),)),
           
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
      Divider(height: 2, color: Colors.black45,),
        Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 5),
            leading: Text('Estatus de Facturación', style: TextStyle(fontSize: 17, color: Colors.black87),),
         
            title:  Container(
                alignment: Alignment.centerRight,
              child: Text('Reservado', style: TextStyle( fontSize: 16, color: Color.fromRGBO(10, 48, 136, 1)),)),
           
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
      Divider(height: 2, color: Colors.black45,),
  Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 5),
            leading: Text('Fecha de Inicio', style: TextStyle(fontSize: 17, color: Colors.black87),),
         
            title:  Container(
                alignment: Alignment.centerRight,
              child: Text('06/04/2020', style: TextStyle( fontSize: 16, color: Color.fromRGBO(10, 48, 136, 1)),)),
           
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
            Divider(height: 2, color: Colors.black45,),
      Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 5),
            leading: Text('Fecha de Fin', style: TextStyle(fontSize: 17, color: Colors.black87),),
         
            title:  Container(
                alignment: Alignment.centerRight,
              child: Text('06/04/2020', style: TextStyle( fontSize: 16, color: Color.fromRGBO(10, 48, 136, 1)),)),
           
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
    Divider(height: 2, color: Colors.black45,),
        Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 5),
            leading: Text('Numero de dias', style: TextStyle(fontSize: 17, color: Colors.black87),),
         
            title:  Container(
                alignment: Alignment.centerRight,
              child: Text('27', style: TextStyle( fontSize: 16, color: Color.fromRGBO(10, 48, 136, 1)),)),
           
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
            Divider(height: 2, color: Colors.black45,),
          Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 5),
            leading: Text('Pago', style: TextStyle(fontSize: 17, color: Colors.black87),),
         
            title:  Container(
                alignment: Alignment.centerRight,
              child: Text('74.96', style: TextStyle( fontSize: 16, color: Color.fromRGBO(10, 48, 136, 1)),)),
           
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
      ],
    );
  }
  Widget desgloseFactura(){
    return DesgloseFactura(

      tituloFactura: 'Datos informativos para comprobantes fiscales',
      montoVida: 20000,
      comisionesBonosVida: 1400,
      descuentosPeriodosVida: 13000,
      otrosMovimientosNoFVida: 11000,
      saldoDisponibleVida: -20000,
      montoFacturasVida: 190000,
      montoNotasVida: 21000,

      item: searchResultVida,
      itemNotes: searchResultVidaNotes ,

      itemNV: searchResultNoVida,
      itemNotesNV: searchResultNotesNoVida,
    
   comisionesBonosNoVida: 122,
   descuentosPeriodosNoVida: 1300000,
   montoNoVida: 122,
  otrosMovimientosNoFNoVida: 2222,
  saldoDisponibleNoVida: 3333,
  montoFacturasNoVida: 1233,
  montoNotasNoVida: 2222,
  montoTotal: 999999,

  onPressed: enviadoE==false ? (){
setState(() {
  
});
 String buzon='S';

  if(buzon=='r'){
showDialog(context: context,
builder: (context) => AlertaFactura(),
); 
  }
else{
showDialog(context: context,
builder: (context) => FacturacionPageBuzono(),
); 
}

enviadoE=true;


    
  } : null,
    );
       }



}


    /*           Container(
                  padding: EdgeInsets.all(8),
       height: size.height * 0.070,
      width: size.width * 0.90,
          color: Colors.white,
          child: RaisedButton(
            child: Text('GENERAR FACTURA', style: TextStyle(color: Colors.white),),
            color: Colors.orange,
            onPressed: (){},)
        ), */
   class FacturasNotas{
String tipo;
String clase;
double montoFacturaTotal;
double importeAImpuesto;
double impuestoAplicar;
double ivaAcreditado;
double ivaRetenido;
double isrMonto;
double impuestoCedular;
double importeDespuesDeImpuesto;


FacturasNotas({this.tipo, this.clase, this.montoFacturaTotal, this.importeAImpuesto, this.impuestoAplicar, this.ivaAcreditado, this.ivaRetenido, this.isrMonto, this.impuestoCedular, this.importeDespuesDeImpuesto});

static List<FacturasNotas> getFacturas(){
  return <FacturasNotas>[
    FacturasNotas(tipo: 'factura', clase: 'vida', montoFacturaTotal: 1000, importeAImpuesto: 1234, impuestoAplicar: 1432, ivaAcreditado: 10000, ivaRetenido: 11111, isrMonto: 1000, impuestoCedular: 1000, importeDespuesDeImpuesto: 1000 ),
   FacturasNotas(tipo: 'factura', clase: 'muerte', montoFacturaTotal: 5555, importeAImpuesto: 5555, impuestoAplicar: 5555, ivaAcreditado: 5555, ivaRetenido: 5555, isrMonto: 5555, impuestoCedular: 5555, importeDespuesDeImpuesto: 5555 ),
 FacturasNotas(tipo: 'notas', clase: 'muerte', montoFacturaTotal: 6666, importeAImpuesto: 6666, impuestoAplicar: 6666, ivaAcreditado: 6666, ivaRetenido: 66666, isrMonto: 6666, impuestoCedular: 66666, importeDespuesDeImpuesto: 666666 ),  
  FacturasNotas(tipo: 'notas', clase: 'vida', montoFacturaTotal: 2000, importeAImpuesto: 7777, impuestoAplicar: 1432, ivaAcreditado: 4444, ivaRetenido: 2222, isrMonto: 3333, impuestoCedular: 1111, importeDespuesDeImpuesto: 4444 ),



  ];
}

} 