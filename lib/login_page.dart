import 'package:flutter/material.dart';
import 'package:ingresos/SegundaClave.dart';

import 'detalle_ingresos.dart';
import 'main.dart';

class LoginDialog extends StatefulWidget {


   
  LoginDialog() : super();

  @override
  _LoginDialogState createState() => _LoginDialogState();
}

class _LoginDialogState extends State<LoginDialog> {

    String radio;
   
    bool clavecorrecta;
List<AgentePrueba> searchResult;

List<AgentePrueba> _userDetails;
  TextEditingController validacion = new TextEditingController();
   final azulMarino = Color.fromRGBO(4, 54, 129, 1);
String errorText;
SegundaClave segunda;

bool errorClave;

final s = new SegundaClave();

 Future<SegundaClave> cl;
Map user;
void initState()  { 
 
  super.initState();
   searchResult = AgentePrueba.getAgentes();
    _userDetails = AgentePrueba.getAgentes();

 errorClave = s.error;
 print(errorClave);
}

 List<SegundaClave> claves;
  @override
  Widget build(BuildContext context) {
  return  ListView(
    children: <Widget>[
      AlertDialog(
          title: 
              Text('Acceso a detalle de Ingresos', style: TextStyle(fontSize: 16, color: azulMarino),),
           
           
          
             content: Container(
               height: 230,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children:  <Widget>[
                  
                 Text('Selecciona tu CUA', style: TextStyle(fontSize: 15, color: Colors.black54)),
                   Container(
                     alignment: Alignment.centerLeft,
           //  padding: EdgeInsets.only(right: 120),
                    height: 130,
                    width: 200, 
                    child: ListView.builder(
                      
                     
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(), 
                                   //   shrinkWrap: true,
                                    itemCount: _userDetails.length,
                    itemBuilder: (context,index){
                    
                      return    RadioListTile(
                        
                      
                        dense: true,
                          title: Text(searchResult[index].cua, style: TextStyle(fontSize: 14),),
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: Colors.orange,
                          value: searchResult[index].cua,


                          onChanged: (value) => checkCua(value),
                           
                         
                          
                          groupValue: radio,
                        );
                          
                      //  title: Text(searchResult[index].cua),
                     
                    }
                    
                    ),
            ),
            Container(
              color: Color.fromRGBO(0, 0, 0, .05),
              child: TextField(
         obscureText: true,
                cursorColor: Colors.orange,
                  controller: validacion,
                  onChanged: (String textedValue) => onChanged(textedValue),
        decoration: new InputDecoration(
       prefixIcon: Icon(Icons.lock, color: Colors.black54,),
      focusedBorder: UnderlineInputBorder(
        
        borderSide: BorderSide(
           width: 3,color: Colors.orange),
      ),

                 // hintText: 'Segunda Contraseña',
                  hintMaxLines:  1,
                  labelText:   'Segunda Contraseña',
                  labelStyle:  new TextStyle(color: Colors.orange),
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
FlatButton(onPressed: ()  {
      setState(() {
        
      });
         if(validacion.text!='1234'){
      errorText='La clave no es valida';
       setState(() {
         
       });
        
       } 
        if(clavecorrecta==false){
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
        if(radio!=null){
 viajarP();
        }else{
          errorText='Seleccione CUA';
        }
       
      }
    //  print(widget.segundaC.error);
      
 
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



