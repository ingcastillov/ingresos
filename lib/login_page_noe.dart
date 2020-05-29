import 'package:flutter/material.dart';
import 'package:ingresos/detalle_ingresos.dart';
import 'package:ingresos/model_ingresos.dart';

import 'main.dart';

class LoginDialogNoE extends StatefulWidget {
  LoginDialogNoE({Key key}) : super(key: key);

  @override
  _LoginDialogState createState() => _LoginDialogState();
}

class _LoginDialogState extends State<LoginDialogNoE> {
   DetallesIngresosDto detalleData;
    String radio;
   
    bool clavecorrecta;
List<AgentePrueba> searchResult;
  TextEditingController validacion = new TextEditingController();
   final azulMarino = Color.fromRGBO(4, 54, 129, 1);
String errorText;
void initState() { 
  super.initState();
   searchResult = AgentePrueba.getAgentes();
  //    searchResultVida = FacturasNotas.getFacturas().where((i) => i.clase.contains('vida')).where((i) => i.tipo.contains('factura')).toList();
  
}

  @override
  Widget build(BuildContext context) {
  return  AlertDialog(
      title: 
          Text('Acceso a detalle de Ingresos', style: TextStyle(fontSize: 16, color: azulMarino),),
           
       
      
         content: Container(
           height: 90,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children:  <Widget>[
               Text('Introduce la segunda contraseña', style: TextStyle(fontSize: 15, color: Colors.black54)),
        Container(
          color: Color.fromRGBO(0, 0, 0, .05),
          child: TextField(
     obscureText: true,
            cursorColor: Colors.orange,
              controller: validacion,
              onChanged: (String textedValue) => onChanged(textedValue),
    decoration: new InputDecoration(
  
  focusedBorder: UnderlineInputBorder(
    
    borderSide: BorderSide(
       width: 3,color: Colors.orange),
  ),
  enabledBorder:UnderlineInputBorder(
    
    borderSide: BorderSide(
       width: 3,color: Colors.orange),
  ) ,
             // hintText: 'Segunda Contraseña',
              hintMaxLines:  1,
             /*  labelText:   'Segunda Contraseña',
              labelStyle:  new TextStyle(color: Colors.orange), */
           focusColor: Colors.orange,
             fillColor: Colors.orange,

             // contentPadding: EdgeInsets.all(10),
              errorText: errorText,
            ),
  ),
        )
             ],
           ),
         ), 

   
  
      actions: <Widget>[
FlatButton(onPressed: (){
  setState(() {
    
  });
     if(validacion.text!='1234'){
  errorText='La clave no es valida';
   setState(() {
     
   });
    
   }
     else{
       setState(() {
         
       });
       errorText=null;
     clavecorrecta=true;
   }
 
  if(clavecorrecta==true){
 viajarP();
  
   
  }
  
  
 
}, child: Text('ACEPTAR', style: TextStyle(color: Colors.orange),))
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
    MaterialPageRoute(builder: (context) => DetalleIngresos(detalleData)),
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