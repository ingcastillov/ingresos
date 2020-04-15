import 'package:flutter/material.dart';

class FilterList extends StatefulWidget {
  FilterList({Key key}) : super(key: key);

  @override
  _FilterListState createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {
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
              alignment: Alignment.centerLeft,
              child: Text('    Buscar por nombre o número de Póliza', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)),

                          Container(
                            padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
              child: TextField(
                
                decoration: InputDecoration(
                  prefixIcon:  Icon(Icons.search, color: Colors.grey,),
                  labelText: 'Nombre o numero de poliza',
                 border: OutlineInputBorder(
                  
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 5.0
                  ),
                 ),
             
                
                ),
                onTap: (){},
              )),


       
             ],
           ),
         ),
       ),
    );
  }
}