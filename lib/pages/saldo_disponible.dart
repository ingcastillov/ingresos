import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class SaldoDisponible extends StatefulWidget {

  @override
  _SaldoDisponibleState createState() => _SaldoDisponibleState();
}

class _SaldoDisponibleState extends State<SaldoDisponible> {
  final GlobalKey<AnimatedCircularChartState> _chartKey = new GlobalKey<AnimatedCircularChartState>();

 double comisiones = 2000;

   double bonos = 1000;

  double otrosmovimientos = 2000;

  double impuestos =1000;

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
  
       body:  Column(
         children: <Widget>[
           Stack(
            // fit: StackFit.expand,
    
                // alignment: AlignmentDirectional.center,
               children: <Widget>[
                
                _crearFondo(context),

                 Center(
                   child: Stack(
                       alignment: AlignmentDirectional.center,
                         children: <Widget>[
                           circuloBlanco(),
                           _graficaCircular(context),
                           textoCircular(),
                        
                         
                         
                         ],
                       ),
                 ),
                
               ],
             ),
         ],
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

      Widget circuloBlanco(){
         return    Container(
                     // alignment: AlignmentDirectional.bottomCenter,
                            width: 300.0,
                            height: 300.0,
                          // padding: EdgeInsets.only(top),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              color: Color.fromRGBO(255, 255, 255, 1),
                            
                            ),
                          );
           
         
      }

      Widget _graficaCircular(context){
   
    List<CircularStackEntry> data = <CircularStackEntry>[
  new CircularStackEntry(
    <CircularSegmentEntry>[
       new CircularSegmentEntry(comisiones, Colors.blueAccent, rankKey: 'Q1'),
      new CircularSegmentEntry(bonos, Colors.orange, rankKey: 'Q2'),
      new CircularSegmentEntry(otrosmovimientos, Colors.red, rankKey: 'Q3'),
      new CircularSegmentEntry(impuestos, Colors.green[200], rankKey: 'Q4'),
    ],
    rankKey: 'Quarterly Profits',
  ),
];

          return Container(
           padding: EdgeInsets.only(top: 0),
            child: new AnimatedCircularChart(
    key: _chartKey,
    size: const Size(350.0, 350.0),
    initialChartData: data,
    chartType: CircularChartType.Radial,
  ),
          );
      }

      Widget textoCircular(){
 

                  return   Container(

                          child: Column(
                            children: <Widget>[
        

                               SizedBox(),
                              Text('Saldo Disponible', style: TextStyle(color: Colors.blue[900], fontSize: 20),),
                              Text("\u0024"+pattern.format(saldoDisponible), style: TextStyle(color: Colors.blue[900], fontSize: 40, fontWeight: FontWeight.bold),),
                              Container(child: Text(''),),
                              Text('Del 14/10/19 al\n     16/10/19', style: TextStyle(color: Colors.grey, fontSize: 20),),
                            ],
                          ),
                        );
      }

    
}