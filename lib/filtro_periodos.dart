import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ingresos/filteredperiodos/bonos_autos_filter.dart';
import 'package:ingresos/filteredperiodos/bonos_danos_filter.dart';
import 'package:ingresos/filteredperiodos/bonos_gmm_filter.dart';
import 'package:ingresos/filteredperiodos/bonos_vida_filter.dart';
import 'package:ingresos/filteredperiodos/otros_gmm_filter.dart';
import 'package:ingresos/filteredperiodos/otros_vida_filter.dart';
import 'comparacion_periodos.dart';
import 'filteredperiodos/comisiones_autos_filter.dart';
import 'filteredperiodos/comisiones_danos_filter.dart';
import 'filteredperiodos/comisiones_gmm_filter.dart';
import 'filteredperiodos/comisiones_vida_filter.dart';
import 'filteredperiodos/otros_autos_filter.dart';
import 'filteredperiodos/otros_danos_filter.dart';

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

  String resultadoFiltro='General';
  String resultadoFiltroRamo='General';

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
       resultadoFiltro='General';
       resultadoFiltroRamo='General';
         Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ComparacionPeriodos()));
                });
/*                                 Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ComparacionPeriodos())); */
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
                onPressed: (){
 /*                  if(resultadoFiltro=='General' && resultadoFiltroRamo=='General'){
                        Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ComparacionPeriodos()));
                  }  */
                  if(resultadoFiltro=='Comisiones' && resultadoFiltroRamo=='Vida'){
                      Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ComisionesVidaFiltered()));
                  }
                  if(resultadoFiltro=='Comisiones' && resultadoFiltroRamo=='Autos'){
                      Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ComisionesAutosFiltered()));
                  }
                    if(resultadoFiltro=='Comisiones' && resultadoFiltroRamo=='GMM'){
                      Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ComisionesGMMFiltered()));
                  }
                                    if(resultadoFiltro=='Comisiones' && resultadoFiltroRamo=='Daños'){
                      Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ComisionesDanosFiltered()));
                  }
                                      if(resultadoFiltro=='Otros' && resultadoFiltroRamo=='Vida'){
                      Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OtrosVidaFiltered()));
                  }
                                    if(resultadoFiltro=='Otros' && resultadoFiltroRamo=='Autos'){
                      Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OtrosAutosFiltered()));
                  }
                    if(resultadoFiltro=='Otros' && resultadoFiltroRamo=='GMM'){
                      Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OtrosGMMFiltered()));
                  }
                                    if(resultadoFiltro=='Otros' && resultadoFiltroRamo=='Daños'){
                      Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OtrosDanosFiltered()));
                  }
                                     if(resultadoFiltro=='Bonos' && resultadoFiltroRamo=='Vida'){
                      Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BonosVidaFiltered()));
                  }
                                    if(resultadoFiltro=='Bonos' && resultadoFiltroRamo=='Autos'){
                      Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BonosAutosFiltered()));
                  }
                    if(resultadoFiltro=='Bonos' && resultadoFiltroRamo=='GMM'){
                      Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BonosGMMFiltered()));
                  }
                                    if(resultadoFiltro=='Bonos' && resultadoFiltroRamo=='Daños'){
                      Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BonosDanosFiltered()));
                  }
  
                   
                },
                
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
                          Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ComparacionPeriodos()));
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
       accionBotonFiltered('Comisiones');
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
      accionBotonFiltered('Otros');
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
      accionBotonFiltered('Bonos');
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
       accionBotonFilteredRamo('Vida');
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
       accionBotonFilteredRamo('Autos');
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
       accionBotonFilteredRamo('GMM');
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
       accionBotonFilteredRamo('Daños');

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


  accionBotonFiltered(String value){
  
  resultadoFiltro=value;
 

  }

    accionBotonFilteredRamo(String value){
  
  resultadoFiltroRamo=value;

  }
}