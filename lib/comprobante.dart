import 'package:flutter/material.dart';
import 'package:ingresos/Commons/ComprobanteGenerico.dart';

class ComprobantePage extends StatefulWidget {
  @override
  _ComprobantePageState createState() => _ComprobantePageState();
}

class _ComprobantePageState extends State<ComprobantePage> {

  bool vida = false;
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
          'Comprobante',
          style: TextStyle(color: Colors.blueGrey),
        ),
      ),

      body: ListView(
        children: <Widget>[
          desgloseFactura(),
          notaCredito(),
        ],
      ),
    );


  }


  Widget desgloseFactura(){
 return ComprobanteGenerico(
   tituloComprobante: 'Factura', 
   montoVida: -1000, 
   numeroFactura: '32423423432432432454353453',
    importeAImpuestos: 4323, 
    ivaRetenido: 5434, 
    ivaAcreditado: 12321, 
    isrMonto: 5435345, 
    impuestoCedular: -345345,
     importeDImpuestos: 234234, 
     fechaIngreso: '22/08/2020',

     montoNoVida: 12000,
     numeroFacturaNoVida: '123123123123432323',
     importeAImpuestosNoVida: 4000,
     ivaRetenidoNoVida: 2134,
     ivaAcreditadoNoVida: 3233,
     isrMontoNoVida: 3456,
     impuestoCedularNoVida: 3433,
     importeDImpuestosNoVida: 433,
     fechaIngresoNoVida: '27/05/2020',
     
     
     );


  }


    Widget notaCredito(){
return ComprobanteGenerico(
  tituloComprobante: 'Nota de Credito', 
  montoVida: 1000, 
  numeroFactura: '324324234', 
  importeAImpuestos: -3872, 
  ivaRetenido: -4883, 
  ivaAcreditado: -48723, 
  isrMonto: -98473, 
  impuestoCedular: -8382, 
  importeDImpuestos: 3213, 
  fechaIngreso: '22/02/2019', 
  montoNoVida: 12222, 
  numeroFacturaNoVida: '23423423412312432234234', 
  importeAImpuestosNoVida: 23234234324, 
  ivaRetenidoNoVida: 234234234, 
  ivaAcreditadoNoVida: 4234234, 
  isrMontoNoVida: 234234, 
  impuestoCedularNoVida: 4324324, 
  importeDImpuestosNoVida: 43243212, 
  fechaIngresoNoVida: '3234232');
  }
}