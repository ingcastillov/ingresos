import 'package:flutter/material.dart';

class FilterPeriodos extends StatefulWidget {
  FilterPeriodos({Key key}) : super(key: key);

  @override
  _FilterPeriodosState createState() => _FilterPeriodosState();
}

class _FilterPeriodosState extends State<FilterPeriodos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:        Container(
         padding: EdgeInsets.only(left: 35),
               alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[

           
            RaisedButton(

               padding: EdgeInsets.fromLTRB(44, 15, 44, 15),
              child: Text('Borrar Filtros'),
              color: Colors.white,
            
              onPressed: (){},

            ),
            Text('    '),
              RaisedButton(
               padding: EdgeInsets.fromLTRB(64, 15, 64, 15),
                  color: Colors.orange,
                   child: Text('Filtrar', style: TextStyle(color: Colors.white),),
              onPressed: (){},
              
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
                     color: Colors.orange,
  child: Text("Comisiones", style: TextStyle(color: Colors.white)),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30)
  ),
  onPressed: (){},
),
                 ),
           

Container(
  padding: EdgeInsets.all(8),
  child:   RaisedButton(
color: Colors.white,
    child: Text("Otros Movimientos", style: TextStyle(color: Colors.black)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30)
    ),
    onPressed: (){},
  ),
),

               ],
             ),
Container(
    padding: EdgeInsets.all(8),
  alignment: Alignment.centerLeft,
  child:   RaisedButton(
    color: Colors.white,
    child: Text("Bonos", style: TextStyle(color: Colors.black),),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30)
    ),
    onPressed: (){},
  ),
),

            Container(
              padding: EdgeInsets.all(12),
              alignment: Alignment.centerLeft,
              child: Text('Comisiones por tipo de ramo', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),)),

             Row(
               children: <Widget>[
                 Container(
                   padding: EdgeInsets.all(6),
                   child: RaisedButton(
                     color: Colors.white,
  child: Text("Vida", style: TextStyle(color: Colors.black)),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30)
  ),
  onPressed: (){},
),
                 ),
           

Container(
  padding: EdgeInsets.all(6),
  child:   RaisedButton(
color: Colors.white,
    child: Text("Autos", style: TextStyle(color: Colors.black)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30)
    ),
    onPressed: (){},
  ),
),

Container(
  padding: EdgeInsets.all(6),
  child:   RaisedButton(
color: Colors.white,
    child: Text("GMM", style: TextStyle(color: Colors.black)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30)
    ),
    onPressed: (){},
  ),
),

Container(
  padding: EdgeInsets.all(6),
  child:   RaisedButton(
color: Colors.white,
    child: Text("Daños", style: TextStyle(color: Colors.black)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30)
    ),
    onPressed: (){},
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