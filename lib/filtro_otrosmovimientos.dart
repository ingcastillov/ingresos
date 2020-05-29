import 'dart:ui';

import 'package:flutter/material.dart';

import 'OtrosMovimientosFiltered.dart';
import 'otros_movimientos.dart';

class FilterOtrosMovimientos extends StatefulWidget {
  FilterOtrosMovimientos({Key key}) : super(key: key);

  @override
  _FilterOtrosMovimientosState createState() => _FilterOtrosMovimientosState();
}

class _FilterOtrosMovimientosState extends State<FilterOtrosMovimientos> {
 TextEditingController controller = new TextEditingController();
  bool buzoneSeleccionado=false;
  bool fianzasSeleccionado=false;
  bool pensionSeleccionado=false;
    bool congresosSeleccionado=false;

       List<Otros> searchResult;
        List<Otros> _userDetails;

  @override
  void initState() {
    super.initState();

    
     searchResult = Otros.getOtros();
     _userDetails = Otros.getOtros();
   
  }

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
                child: Text('Borrar Filtros'),
                color: Colors.white,
              
                onPressed: (){
                setState(() {
        controller.clear();
       buzoneSeleccionado=false;
       fianzasSeleccionado=false;
       pensionSeleccionado=false;
       congresosSeleccionado=false;
       
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
                onPressed: (){
             controller.text.isEmpty ? Navigator.push(context, MaterialPageRoute(builder: (context) => OtrosMovimientos()))   :       Navigator.push(context,
              MaterialPageRoute(builder: (context) => OtrosMovimientosFiltered(searchResult: searchResult,))); 
             
                },
                
            ),
              ),
          ],
        ),
              ),

       body:  SafeArea(
         child: Column(
               children: <Widget>[
                 ListTile(
                   leading: Text('Filtros', style: TextStyle(color:Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
                   trailing:            IconButton(icon: Icon(Icons.close,), onPressed: (){
 Navigator.push(context, MaterialPageRoute(builder: (context) => OtrosMovimientos()));
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
                       color: buzoneSeleccionado ? Colors.orange : Colors.white,
  child: Text("Buzón E", style: buzoneSeleccionado ? TextStyle(color: Colors.white) : TextStyle(color:Colors.black)),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30)
  ),
  onPressed: (){
    setState(() {
          buzoneSeleccionado=true;
      congresosSeleccionado=false;
      pensionSeleccionado=false;
      fianzasSeleccionado=false;
      metodoConceptos();

    });
    
  },
),
                   ),
             

Container(
  padding: EdgeInsets.all(8),
  child:   RaisedButton(
   color: fianzasSeleccionado ? Colors.orange : Colors.white,
    child: Text("Fianzas", style: fianzasSeleccionado ? TextStyle(color: Colors.white) : TextStyle(color:Colors.black)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30)
    ),
    onPressed: (){
      setState(() {
     
            buzoneSeleccionado=false;
      congresosSeleccionado=false;
      pensionSeleccionado=false;
      fianzasSeleccionado=true;
      metodoConceptos();
         
      });
    

    },
  ),
),

Container(
  padding: EdgeInsets.all(8),
  child:   RaisedButton(
   color: congresosSeleccionado ? Colors.orange : Colors.white,
    child: Text("Congresos", style: congresosSeleccionado ? TextStyle(color: Colors.white) : TextStyle(color:Colors.black)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30)
    ),
    onPressed: (){
      setState(() {
           buzoneSeleccionado=false;
      congresosSeleccionado=true;
      pensionSeleccionado=false;
      fianzasSeleccionado=false;
       metodoConceptos();
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
   color: pensionSeleccionado ? Colors.orange : Colors.white,
    child: Text("Pensión Alimenticia", style: pensionSeleccionado ? TextStyle(color: Colors.white) : TextStyle(color:Colors.black),),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30)
    ),
    onPressed: (){
            setState(() {
            buzoneSeleccionado=false;
      congresosSeleccionado=false;
      pensionSeleccionado=true;
      fianzasSeleccionado=false;
       metodoConceptos();
      });
    },
  ),
),

              Container(
                padding: EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text('Observación', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),)),

              
Container(
     padding: EdgeInsets.all(15),
  child:   TextField(
                     onChanged: onSearchTextChanged,
                      controller: controller,
                 

                      decoration: InputDecoration(
                        prefixIcon:  Icon(Icons.search, color: Colors.grey,),
                        labelText: 'Nombre o numero de observación',
                       border: OutlineInputBorder(
                        
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 5.0
                        ),
                       ),
                   
                      
                      ),

                      
               
                    ),
),

                 controller.text.isEmpty ? Container() :
           new Expanded(
             
                child: searchResult.length != 0
                    ? new ListView.builder(
                  itemCount: searchResult.length,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(0,2,0,2),
                      child: new Card(
                     
                        child: new ListTile(
                         contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      
                          title: Row(
                            children: <Widget>[
  
               
                              new Text(searchResult[i].concepto),
                              SizedBox(width: 50,),
                               new Text(searchResult[i].observacion),
                               SizedBox(width: 50,), 
                            new Text(searchResult[i].monto.toString())
                            ],
                          ),
                        ),
                       margin: const EdgeInsets.all(0.0),
                      ),
                    );
                  },
                )
                    : new ListView.builder(
                  itemCount: _userDetails.length,
                  itemBuilder: (context, index) {
                    return new Card(
               
                      child: new ListTile(
   
                        title: new Text(_userDetails[index].concepto + ' ' + _userDetails[index].observacion),

                      ),
                      margin: const EdgeInsets.all(0.0),
                    );
                  },
                ),  
            ),
         
               ],
             ),
       ),
         
       
    );
  }

  metodoConceptos(){
 if(buzoneSeleccionado){
   setState(() {
     
   });
    searchResult.clear();
   controller.text='Buzón E';
  onSearchTextChanged(controller.text);
 }
 if(fianzasSeleccionado){
   setState(() {
     
   });
    searchResult.clear();
   controller.text='Fianzas';
  onSearchTextChanged(controller.text);
 }

  if(congresosSeleccionado){
   setState(() {
     
   });
    searchResult.clear();
   controller.text='Congresos';
  onSearchTextChanged(controller.text);
 }

   if(pensionSeleccionado){
   setState(() {
     
   });
    searchResult.clear();
   controller.text='Pensión Alimenticia';
  onSearchTextChanged(controller.text);
 }



}
      onSearchTextChanged(String text) async {
    searchResult.clear();
       
      
    if (text.isEmpty) {
      setState(() {});
      return;
    }

        _userDetails.forEach((userDetail) {
      if (userDetail.concepto.contains(text) || userDetail.observacion.contains(text))
        searchResult.add(userDetail);
    });

      

    setState(() {});
}



}

