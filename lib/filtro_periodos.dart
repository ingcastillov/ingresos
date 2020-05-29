import 'dart:ui';

import 'package:flutter/material.dart';

class FilterPeriodos extends StatefulWidget {
  FilterPeriodos({Key key}) : super(key: key);

  @override
  _FilterPeriodosState createState() => _FilterPeriodosState();
}

class _FilterPeriodosState extends State<FilterPeriodos> {

  bool comisionesSeleccionado=false;
  bool otrosMovimientosSeleccionado=false;
  bool bonosSeleccionado=false;

  bool vidaSeleccionado=false;
  bool autosSeleccionado=false;
  bool gmmSeleccionado=false;
  bool danosSeleccionado=false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      
      floatingActionButton:        Container(
         padding: EdgeInsets.only(left: 35),
               alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[

           
            Container(
               height: size.height*0.07,
              width: size.width*0.42,
              child: RaisedButton(

                // padding: EdgeInsets.fromLTRB(44, 15, 44, 15),
                child: Text('Limpiar Filtros'),
                color: Colors.white,
              
                onPressed: (){
                setState(() {
                   vidaSeleccionado=false;
       gmmSeleccionado=false;
       autosSeleccionado=false;
       danosSeleccionado=false;
       comisionesSeleccionado=false;
       otrosMovimientosSeleccionado=false;
       bonosSeleccionado=false;
       
                });
                },

              ),
            ),
            Text('    '),
              Container(
                height: size.height*0.07,
                 width: size.width*0.42,
                child: RaisedButton(
                  
                // padding: EdgeInsets.fromLTRB(64, 15, 64, 15),
                    color: Colors.orange,
                     child: Text('Filtrar', style: TextStyle(color: Colors.white),),
                onPressed: (){},
                
            ),
              ),
          ],
        ),
              ),

       body: SingleChildScrollView(
         child: SafeArea(
           
           child: Column(
             children: <Widget>[
               ListTile(
                 leading: Text('Filtros', style: TextStyle(color:Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
                 trailing:            IconButton(icon: Icon(Icons.close,), onPressed: (){
    Navigator.pop(context);
             }),
               ),
            Container(
              padding: EdgeInsets.all(12),
              alignment: Alignment.centerLeft,
              child: Text('Concepto', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),)),
  Container(child:Text('    ')),
             Row(
               children: <Widget>[
                 Container(
                   padding: EdgeInsets.all(8),
                   child: RaisedButton(
                     color: comisionesSeleccionado ? Colors.orange : Colors.white,
  child: Text("Comisiones", style: comisionesSeleccionado ? TextStyle(color: Colors.white) : TextStyle(color:Colors.black)),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30)
  ),
  onPressed: (){
    setState(() {
comisionesSeleccionado=true;
       otrosMovimientosSeleccionado=false;
       bonosSeleccionado=false;
    });
    
  },
),
                 ),
           

Container(
  padding: EdgeInsets.all(8),
  child:   RaisedButton(
   color: otrosMovimientosSeleccionado ? Colors.orange : Colors.white,
    child: Text("Otros Movimientos", style: otrosMovimientosSeleccionado ? TextStyle(color: Colors.white) : TextStyle(color:Colors.black)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30)
    ),
    onPressed: (){
      setState(() {
          comisionesSeleccionado=false;
      otrosMovimientosSeleccionado=true;
      bonosSeleccionado=false;
      });
    

    },
  ),
),

               ],
             ),
Container(
    padding: EdgeInsets.all(8),
  alignment: Alignment.centerLeft,
  child:   RaisedButton(
   color: bonosSeleccionado ? Colors.orange : Colors.white,
    child: Text("Bonos", style: bonosSeleccionado ? TextStyle(color: Colors.white) : TextStyle(color:Colors.black),),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30)
    ),
    onPressed: (){
          setState(() {
          comisionesSeleccionado=false;
      otrosMovimientosSeleccionado=false;
      bonosSeleccionado=true;
      });
    },
  ),
),

            Container(
              padding: EdgeInsets.all(12),
              alignment: Alignment.centerLeft,
              child: Text('Comisiones por tipo de ramo', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),)),

             Row(
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.all(6.0),
                   child: Container(
                
                     width: size.width*0.2,
                     child: RaisedButton(
                       color: vidaSeleccionado ? Colors.orange : Colors.white,
  child: Text("Vida", style: TextStyle(color: vidaSeleccionado ? Colors.white : Colors.black)),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30)
  ),
  onPressed: (){
    setState(() {
       vidaSeleccionado=true;
       gmmSeleccionado=false;
       autosSeleccionado=false;
       danosSeleccionado=false;
    });
   
  },
),
                   ),
                 ),
           

Padding(
  padding: const EdgeInsets.all(6.0),
  child:   Container(
   
   width: size.width*0.2,
    child:   RaisedButton(
  color: autosSeleccionado ? Colors.orange : Colors.white,
      child: Text("Autos", style: TextStyle(color: autosSeleccionado ? Colors.white : Colors.black)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      onPressed: (){
            setState(() {
       vidaSeleccionado=false;
       gmmSeleccionado=false;
       autosSeleccionado=true;
       danosSeleccionado=false;
    });
      },
    ),
  ),
),

Padding(
  padding: const EdgeInsets.all(6.0),
  child:   Container(
   width: size.width*0.2,
    child:   RaisedButton(
  color: gmmSeleccionado ? Colors.orange : Colors.white,
      child: Text("GMM", style: TextStyle(color: gmmSeleccionado ? Colors.white : Colors.black)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      onPressed: (){
            setState(() {
       vidaSeleccionado=false;
       gmmSeleccionado=true;
       autosSeleccionado=false;
       danosSeleccionado=false;
    });
      },
    ),
  ),
),

Padding(
  padding: const EdgeInsets.all(6.0),
  child:   Container(
   width: size.width*0.2,
    child:   RaisedButton(
  color: danosSeleccionado ? Colors.orange : Colors.white,
      child: Text("Daños", style: TextStyle(color: danosSeleccionado ? Colors.white : Colors.black)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      onPressed: (){
            setState(() {
       vidaSeleccionado=false;
       gmmSeleccionado=false;
       autosSeleccionado=false;
       danosSeleccionado=true;
    });
      },
    ),
  ),
),

               ],
             ),
       
             ],
           ),
         ),
       ),
    );
  }
}