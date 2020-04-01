import 'package:ingresos/pages/bonos_page.dart';
import 'package:ingresos/pages/comisiones_page.dart';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class SaldoDisponible extends StatefulWidget {

  @override
  _SaldoDisponibleState createState() => _SaldoDisponibleState();
}

class _SaldoDisponibleState extends State<SaldoDisponible> {
  final GlobalKey<AnimatedCircularChartState> _chartKey = new GlobalKey<AnimatedCircularChartState>();

 double comisiones = 320000;

   double bonos = 800000;

  double otrosmovimientos = 222000;

  double impuestos =1000000;

  final pattern = new NumberFormat("###,###,###.##");

  double saldoDisponible = 84692.87;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.orange,), onPressed: (){
           Navigator.pop(context);
         }),
         centerTitle: true,
         title: Text('Saldo Disponible', style: TextStyle(color:Colors.blueGrey),),
       ),
  
       body:  SingleChildScrollView(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,

           children: <Widget>[

             
             Stack(
               
               children: <Widget>[

               _crearFondo(context),
               Container(
                 
                 padding: EdgeInsets.only(top:30),
                 child: _graficaCircular(context)),
             ],),
         Container(child: Text(''),),
         Container(child: Text(''),),
         bannerComisiones(),
            Container(child: Text(''),),
         bannerBonos(),
          Container(child: Text(''),),
         bannerOtrosMovimientos(),
            Container(child: Text(''),),
         bannerImpuestos(),
          Container(child: Text(''),),
         buttonFacturacion(),
           
           
           
               
             
           

           ],
         ),

       ),
       
       
    );
  }

    Widget  _crearFondo(context) {
                      final size  = MediaQuery.of(context).size;
                      final colorFondo = Container(
                       
                        height: size.height * 0.20,
                        width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                           Color.fromRGBO(19, 64, 155, 1.0),
                            Color.fromRGBO(19, 64, 155, 1.0),
                             Color.fromRGBO(19, 64, 155, 1.0),
                     
                         
                        ])
                      ),
                      );
          
                      
          
                      return  Stack(
                        children: <Widget>[
                          colorFondo,

                          

                         
          Container(
            //  padding: EdgeInsets.only(top:50 , left: 20),
            child: Column(
              children: <Widget>[
                                                SizedBox(),

              ],
            ),
          ),
         
                          Container(
                           // padding: EdgeInsets.only(top:10 , left: 20),
                            child: Column(
                              children: <Widget>[
                                  

                                 SizedBox(),

                              ],
                            ),
                          ),
      


                        ],
                        );
                      
                    }


      Widget _graficaCircular(context){
   
    List<CircularStackEntry> data = <CircularStackEntry>[
  new CircularStackEntry(
    <CircularSegmentEntry>[
       new CircularSegmentEntry(comisiones, Colors.red, rankKey: 'Q1'),
      new CircularSegmentEntry(bonos, Colors.blue, rankKey: 'Q2'),
      new CircularSegmentEntry(otrosmovimientos, Colors.orange, rankKey: 'Q3'),
     // new CircularSegmentEntry(impuestos, Colors.white, rankKey: 'Q4'),
    ],
    rankKey: 'Quarterly Profits',
  ),
];

          return 
             

         Center(
          
            
           child:    Container(
                        // alignment: AlignmentDirectional.bottomCenter,
                                      width: 240.0,
                                      height: 220.0,
                                    // padding: EdgeInsets.only(top),
                                      decoration: BoxDecoration(

                                        borderRadius: BorderRadius.circular(200),
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                         
                                      
                                      ),

                     
                      child: 
                      
        


                           Stack(
                             children: <Widget>[
                               Container(
                                 alignment: Alignment.center,
                                 child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: <Widget>[

                              Text('Saldo Disponible', style: TextStyle(color: Colors.blue[900], fontSize: 18),),
                              Text("\u0024"+pattern.format(saldoDisponible), style: TextStyle(color: Colors.blue[900], fontSize: 30, fontWeight: FontWeight.bold),),
                              Container(child: Text(''),),
                              Text('Del 14/10/19 al\n     16/10/19', style: TextStyle(color: Colors.grey, fontSize: 16),),
                                   ],
                                 )),
                              
                               Container(
                                 child: AnimatedCircularChart(

                                 
    key: _chartKey,
    size:  Size(290.0, 290.0),
    initialChartData: data,

    chartType: CircularChartType.Radial,
  
  ),
                               ),
                             ],
                           ),
                        
                       
                        
                      
                    ),

                   
            
         );

           


             

 
      }




                  Widget bannerComisiones(){
 final size = MediaQuery.of(context).size;
              return Container(
                height: size.height*0.085,
                width: size.width*0.95,
         
               // padding: EdgeInsets.symmetric(vertical: ),
               padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: ListTile(
                                            contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                         leading: Container(
                         // padding: EdgeInsets.only(right:110),
                         width: 10,
                         height: size.height*0.085 ,
                           decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                             color: Colors.blue,
                           ),
                         ),
                           title: Text('Comisiones'+'             '"\u0024"+pattern.format(comisiones), style: TextStyle(color: Colors.blueGrey,fontSize: 17),),
                           trailing: Container(child: IconButton(icon: Icon(Icons.arrow_forward_ios, size: 25, color: Colors.orange,), onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ComisionesPage() ));
                           })),
                ),

                            decoration: BoxDecoration(
                                              
                                               color: Colors.white,
                                              borderRadius: BorderRadius.circular(12.0),
                                              boxShadow: <BoxShadow>[
                                                BoxShadow(

                                                  color: Colors.black26,
                                                  offset: Offset(4, 3),
                                                  blurRadius: 3.0,
                                                  spreadRadius: 3.0,
                                                ),
                                              ],
                                             
                                             
                                              ),
              );
                            

      }

                        Widget bannerBonos(){
 final size = MediaQuery.of(context).size;
              return Container(
                height: size.height*0.085,
                width: size.width*0.95,
         
               // padding: EdgeInsets.symmetric(vertical: ),
               padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: ListTile(
                                            contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                         leading: Container(
                         // padding: EdgeInsets.only(right:110),
                         width: 10,
                         height: size.height*0.085 ,
                           decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                             color: Colors.orange,
                           ),
                         ),
                           title: Text('Bonos'+'                      '"\u0024"+pattern.format(bonos), style: TextStyle(color: Colors.blueGrey,fontSize: 17),),
                           trailing: Container(child: IconButton(icon: Icon(Icons.arrow_forward_ios, size: 25, color: Colors.orange,), onPressed: (){
                                                           Navigator.push(context, MaterialPageRoute(builder: (context) => BonosPage() ));
                           })),
                ),

                            decoration: BoxDecoration(
                                              
                                               color: Colors.white,
                                              borderRadius: BorderRadius.circular(12.0),
                                              boxShadow: <BoxShadow>[
                                                BoxShadow(

                                                  color: Colors.black26,
                                                  offset: Offset(4, 3),
                                                  blurRadius: 3.0,
                                                  spreadRadius: 3.0,
                                                ),
                                              ],
                                             
                                             
                                              ),
              );
                            

      }


                        Widget bannerOtrosMovimientos(){
 final size = MediaQuery.of(context).size;
              return Container(
                height: size.height*0.085,
                width: size.width*0.95,
         
               // padding: EdgeInsets.symmetric(vertical: ),
               padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                child: ListTile(
                                            contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                         leading: Container(
                         // padding: EdgeInsets.only(right:110),
                         width: 10,
                         height: size.height*0.085 ,
                           decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                             color: Colors.red,
                           ),
                         ),
                           title: Text('Otros Movimientos'+'  '"\u0024"+pattern.format(otrosmovimientos), style: TextStyle(color: Colors.blueGrey,fontSize: 17),),
                           trailing: Container(child: IconButton(icon: Icon(Icons.arrow_forward_ios, size: 25, color: Colors.orange,), onPressed: (){})),
                ),

                            decoration: BoxDecoration(
                                              
                                               color: Colors.white,
                                              borderRadius: BorderRadius.circular(12.0),
                                              boxShadow: <BoxShadow>[
                                                BoxShadow(

                                                  color: Colors.black26,
                                                  offset: Offset(4, 3),
                                                  blurRadius: 3.0,
                                                  spreadRadius: 3.0,
                                                ),
                                              ],
                                             
                                             
                                              ),
              );
                            

      }



                        Widget bannerImpuestos(){
 final size = MediaQuery.of(context).size;
              return Container(
                height: size.height*0.085,
                width: size.width*0.95,
         
               // padding: EdgeInsets.symmetric(vertical: ),
               padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: ListTile(
                                            contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                         leading: Container(
                         // padding: EdgeInsets.only(right:110),
                         width: 10,
                         height: size.height*0.085 ,
                           decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                             color: Colors.white,
                           ),
                         ),
                           title: Text('Impuestos'+'               '"\u0024"+pattern.format(bonos), style: TextStyle(color: Colors.blueGrey,fontSize: 17),),
                           trailing: Container(child: IconButton(icon: Icon(Icons.arrow_forward_ios, size: 25, color: Colors.orange,), onPressed: (){})),
                ),

                            decoration: BoxDecoration(
                                              
                                               color: Colors.white,
                                              borderRadius: BorderRadius.circular(12.0),
                                              boxShadow: <BoxShadow>[
                                                BoxShadow(

                                                  color: Colors.black26,
                                                  offset: Offset(4, 3),
                                                  blurRadius: 3.0,
                                                  spreadRadius: 3.0,
                                                ),
                                              ],
                                             
                                             
                                              ),
              );
                            

      }


                      

      Widget buttonFacturacion(){
final size = MediaQuery.of(context).size;
      return Container(

        height: size.height*0.085,
                width: size.width*0.95,
        child: RaisedButton(
          
            onPressed: (){},
            child: Text('VER DATOS DE FACTURACIÓN' , style: TextStyle(color:Colors.orange),),
            color: Colors.white,
           shape: RoundedRectangleBorder(
             side: BorderSide(color: Colors.orange)

           ),
        ),
      );
      }
}