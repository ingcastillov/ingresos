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
         title: Text('Detalle de Ingresos', style: TextStyle(color:Colors.blueGrey),),
       ),
       body: Stack(
         children: <Widget>[
           _crearFondo(context),
           _graficaCircular(),
           textoCircular(),
         
         ],
       ),
    );
  }

    Widget  _crearFondo(context) {
                      final size  = MediaQuery.of(context).size;
                      final colorFondo = Container(
                        height: size.height * 0.25,
                        width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                           Color.fromRGBO(19, 64, 155, 1.0),
                            Color.fromRGBO(19, 64, 155, 1.0),
                             Color.fromRGBO(19, 64, 155, 1.0),
                     
                         
                        ])
                      ),
                      );
          
                       final circulo = Container(
                        width: 300.0,
                        height: 300.0,
                
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(300),
                          color: Color.fromRGBO(255, 255, 255, 1),
                        
                        ),
                      ); 
          
                      return Stack(
                      children: <Widget>[
                        colorFondo,
                         Positioned(top: 25, left: 50,  child: circulo),
                      /*  Positioned(top: -40, right: -120,  child: circulo),
                         Positioned(top: -40, right: -250,  child: circulo), */
                        

                       
          Container(
              padding: EdgeInsets.only(top:50 , left: 20),
            child: Column(
              children: <Widget>[
                                              SizedBox(),

              ],
            ),
          ),
         
                        Container(
                          padding: EdgeInsets.only(top:80 , left: 20),
                          child: Column(
                            children: <Widget>[
                                

                               SizedBox(),

                            ],
                          ),
                        ),
      


                      ],
                      );
                    }

      Widget _graficaCircular(){
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
           padding: EdgeInsets.only(top:0 , left:25),
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
                           padding: EdgeInsets.only(top:110 , left: 100),
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