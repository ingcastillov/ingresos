import 'package:flutter/material.dart';
import 'package:ingresos/detalle_ingresos.dart';
import 'package:ingresos/model_ingresos.dart';

import 'detalle_ingresos.dart';
import 'main.dart';

class AlertaFactura extends StatefulWidget {
  AlertaFactura({Key key}) : super(key: key);

  @override
  _AlertaFacturaState createState() => _AlertaFacturaState();
}

class _AlertaFacturaState extends State<AlertaFactura> {
  DetallesIngresosDto detalleData;
  bool status;

    String radio;
   
    bool clavecorrecta;
List<AgentePrueba> searchResult;

//List<AgentePrueba> _userDetails;
  TextEditingController validacion = new TextEditingController();
   final azulMarino = Color.fromRGBO(4, 54, 129, 1);
String errorText;
void initState() { 
  super.initState();
   searchResult = AgentePrueba.getAgentes();
   // _userDetails = AgentePrueba.getAgentes();
  //    searchResultVida = FacturasNotas.getFacturas().where((i) => i.clase.contains('vida')).where((i) => i.tipo.contains('factura')).toList();
  
}

  @override
  Widget build(BuildContext context) {
  return  ListView(
    children: <Widget>[
      AlertDialog(
          title: 
              Column(
                children: <Widget>[
                  Icon(Icons.collections_bookmark, size: 90, color: azulMarino,),
                  Text('Tu petición se envio a Buzón E', style: TextStyle(fontSize: 16, color: azulMarino),),
                ],
              ),
              content: Text('En caso de que la comprobación fiscal se genere exitosamente, se realizara el pago en 48 horas habiles'),

              actions: <Widget>[
               FlatButton(onPressed: (){
                status=false;
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetalleIngresos(status: status,)),
  );
               }, child: Text('ACEPTAR', style: TextStyle(color: Colors.orange),))
              ],
           
        ),
    ],
  );
  }


    void onChanged(String textedValue){
      setState(() {
        textedValue=validacion.text;
      });

  }

    void viajarP(){
      setState(() {
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetalleIngresos()),
  );
      });

  }

   void checkCua(String value) {
    setState(() {
   radio = value;
   print(radio);
    });
  }
}