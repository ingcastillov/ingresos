import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ingresos/Commons/DesgloseFactura.dart';
import 'package:ingresos/saldo_disponible.dart';
import 'package:share/share.dart';

class FacturacionPageBuzono extends StatefulWidget {
  @override
  _FacturacionPageBuzonoState createState() => _FacturacionPageBuzonoState();
}

class _FacturacionPageBuzonoState extends State<FacturacionPageBuzono> {
 List<FacturasNotas> searchResult;
   //  List<FacturasNotas> _userDetails;
    List<FacturasNotas> searchResultNoVida;  
    List<FacturasNotas> searchResultVida;  
     List<FacturasNotas> searchResultVidaNotes;  
      List<FacturasNotas> searchResultNotesNoVida;  
    List<FacturacionFinal> facturx; 
    FacturacionFinal aleta;
    double afraid;
    
      bool enviadoE=false;
      final styleblack = TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14);

  bool ivaF=false;
  bool factur=false;
final azulMarino = Color.fromRGBO(4, 54, 129, 1);
    @override
  void initState() {
    super.initState();
  

     searchResult = FacturasNotas.getFacturas();
    // _userDetails = FacturasNotas.getFacturas();
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
           padding: EdgeInsets.all(8),
          // color: Colors.white,
           child: Text('Informacion de facturación', style: TextStyle(color: azulMarino, fontSize: 17, fontWeight: FontWeight.bold ),),
         ),
         Container(
           color: Colors.white,
           padding: EdgeInsets.all(6),
           child: RichText(
  text: TextSpan(
  
    style: TextStyle(color: Colors.black, fontSize: 14),
    children: <TextSpan>[
      TextSpan(text: 'Razon Social:', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: ' "Grupo Nacional Provincial, S.A.B"'),
        TextSpan(text: '\nRFC de GNP', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: ' "GNP9211244P0"'),
         TextSpan(text: '\n"C.P 04200"'),
      TextSpan(text: '\n\nClave de Unidad de Medida', style: TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(text: '"E48""Unidad de servicio"'),
              TextSpan(text: ' Regimen Fiscal', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: '"612""Regimen de las personas Fisicas con Actividades Empresariales y Profesionales o "601" General de ley de las Personas Morales"'),
                    TextSpan(text: ' \nForma de Pago ', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: '03/Transferencia Electronica de Fondos.'),
       TextSpan(text: ' \nMetodo de Pago ', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: 'PUE/Pago en una sola Exhibición.'),
        TextSpan(text: ' \nClave de Producto o Servicio: ', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: 'Para comisiones de seguros gravadas(GMM,Daños,Autos) sera la clave 80141600 "Actividades de ventas y promoción de negocios" Para las comisiones de seguros exentas (Vida y Agropecuarios) sera la clave 80141601 "Servicios de promoción de ventas"'),
        TextSpan(text: ' \nUso o destino del CFDI ', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: '"G03"Gastos en General'),
         TextSpan(text: ' \nEn el campo cantidad: ', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: '1'),
  
    ],
  ),
),
         ),
/*  
     
                                    Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Text(' Forma de Pago', style: styleblack,),
                   Text(' "03/Transferencia Electronica de')
                 ],
               ),
                              Container(
                 alignment: Alignment.centerLeft,
                 child: Text(' Fondos')
                 ),
                               Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Text(' Metodo de Pago', style: styleblack,),
                   Text(' "PUE/Pago en una sola exhibición')
                 ],
               ),
                         Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Text(' Clave de Producto o Servicio', style: styleblack,),
                   Text(' "PUE/Pago en una sola')
                 ],
               ),


             ],
           ),
         ), */
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

  Widget desgloseFactura(){
    return DesgloseFactura(
      sinbuzone: true,
      fechaInicio: '12/12/2020',
      fechaFin: '12/12/2020',
      tituloFactura: 'Datos informativos para comprobantes fiscales',
      montoVida: afraid,
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

  onPressed: enviadoE==false ? () async {
setState(() {
  
});
 //  Share.share ("Cosas increíbles para compartir"); 
 share(context, aleta); 

    
  } : null,
    );
       }

 share(BuildContext context, FacturacionFinal alligat) {
  final RenderBox box = context.findRenderObject();

  Share.share("Monto Vida 150,000\nMonto No Vida 122\nTotal 999,999",
/*   Share.share("dato 1 = datos 2", */
    //  subject: 'sad;lksadlkjdasljklaksjdjdklasjdlksadjalskdjlaskdj',
    
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);

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


} 


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


      class FacturacionFinal{

double montoVida;



FacturacionFinal({this.montoVida});

static List<FacturacionFinal> getFacturasFinales(){
  return <FacturacionFinal>[
    FacturacionFinal(montoVida: 13000, ),




  ];
}}