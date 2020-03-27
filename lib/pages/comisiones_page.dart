import 'package:flutter/material.dart';

class ComisionesPage extends StatefulWidget {
  ComisionesPage({Key key}) : super(key: key);

  @override
  _ComisionesPageState createState() => _ComisionesPageState();
}

class _ComisionesPageState extends State<ComisionesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
         leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.orange,), onPressed: (){
           Navigator.pop(context);
         }),
         centerTitle: true,
         title: Text('Comisiones', style: TextStyle(color:Colors.blueGrey),),

       
       ),
       body: DefaultTabController(
        length: 5,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(
                isScrollable: true,
                tabs: [
                Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints.expand(width: 60),
                 // color: Colors.red,
                  //width: 900,
                  child: Row(
                    children: <Widget>[

                      Tab(text: "  General",

                      ),
                    ],
                  )),
                            Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints.expand(width: 50),
                 // color: Colors.red,
                  //width: 900,
                  child: Row(
                    children: <Widget>[
                                       Icon(
   Icons.fiber_manual_record,
  color: Colors.green,
  size: 12,
),

                      Tab(text: "  Vida",

                      ),
                    ],
                  )),
                                          Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints.expand(width: 60),
                 // color: Colors.red,
                  //width: 900,
                  child: Row(
                    children: <Widget>[
                                       Icon(
   Icons.fiber_manual_record,
  color: Colors.blue,
  size: 12,
),

                      Tab(text: "  Salud",

                      ),
                    ],
                  )),
                                                Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints.expand(width: 60),
                 // color: Colors.red,
                  //width: 900,
                  child: Row(
                    children: <Widget>[
                                       Icon(
   Icons.fiber_manual_record,
  color: Colors.orange,
  size: 12,
),

                      Tab(text: "  Autos",

                      ),
                    ],
                  )),
                                                        Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints.expand(width: 70),
                 // color: Colors.red,
                  //width: 900,
                  child: Row(
                    children: <Widget>[
                                       Icon(
   Icons.fiber_manual_record,
  color: Colors.purple,
  size: 12,
),

                      Tab(text: "  Daños",

                      ),
                    ],
                  )),
              ]),
            ),
            Expanded(
              child: Container(
                child: TabBarView(children: [
                 pantallaGeneral(),
               pantallaVida(),
             pantallaSalud(),
               pantallaAutos(),
               pantallaDanos(),
               
                ]),
              ),
            )
          ],
        ),
      ),
       
    );



  }

  Widget pantallaGeneral(){
     final size  = MediaQuery.of(context).size;
  return Column(
    children: <Widget>[
      Container(
          height: size.height * 0.15,
                        width: double.infinity,
                        color: Colors.blueGrey,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Text('Comisiones', style: TextStyle(color: Colors.white, fontSize: 20),),
              Text(''),
              Text('\u002420,000.74', style: TextStyle(color: Colors.white, fontSize: 30)),
            ],
          ),

      ),
    ],
  );
}

  Widget pantallaVida(){
     final size  = MediaQuery.of(context).size;
  return Column(
    children: <Widget>[
      Container(
          height: size.height * 0.15,
                        width: double.infinity,
                        color: Colors.green,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Text('Comisiones', style: TextStyle(color: Colors.white, fontSize: 20),),
              Text(''),
              Text('\u00247,000.74', style: TextStyle(color: Colors.white, fontSize: 30)),
            ],
          ),

      ),
    ],
  );
}

  Widget pantallaSalud(){
     final size  = MediaQuery.of(context).size;
  return Column(
    children: <Widget>[
      Container(
          height: size.height * 0.15,
                        width: double.infinity,
                        color: Colors.blue,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Text('Comisiones', style: TextStyle(color: Colors.white, fontSize: 20),),
              Text(''),
              Text('\u00247,300.74', style: TextStyle(color: Colors.white, fontSize: 30)),
            ],
          ),

      ),
    ],
  );
}
  Widget pantallaAutos(){
     final size  = MediaQuery.of(context).size;
  return Column(
    children: <Widget>[
      Container(
          height: size.height * 0.15,
                        width: double.infinity,
                        color: Colors.orange,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Text('Comisiones', style: TextStyle(color: Colors.white, fontSize: 20),),
              Text(''),
              Text('\u00247,880.74', style: TextStyle(color: Colors.white, fontSize: 30)),
            ],
          ),

      ),
    ],
  );
}

  Widget pantallaDanos(){
     final size  = MediaQuery.of(context).size;
  return Column(
    children: <Widget>[
      Container(
          height: size.height * 0.15,
                        width: double.infinity,
                        color: Colors.purple,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Text('Comisiones', style: TextStyle(color: Colors.white, fontSize: 20),),
              Text(''),
              Text('\u002412,880.74', style: TextStyle(color: Colors.white, fontSize: 30)),
            ],
          ),

      ),
    ],
  );
}
}