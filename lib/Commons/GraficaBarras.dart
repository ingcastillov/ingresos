import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class GraficaBarras extends StatefulWidget {

  

   final double gradle;




final double maxY;
final double ultimoY;
final double penultimoY;
final double antepenultimoY;



   GraficaBarras(
      {Key key,

       
        @required this.gradle,
   





@required this.maxY,
@required this.ultimoY,
@required this.penultimoY,
@required this.antepenultimoY,

 
  
   
  }): super(key: key);
    GraficaBarrasState createState() => new GraficaBarrasState();
}

class GraficaBarrasState extends State<GraficaBarras> {
  String mesTabla;
  String mesCantidad;

  final azulMarino =  Color.fromRGBO(4, 54, 129, 1);
  int variable=0;

  final pattern = new NumberFormat("###,###,###.##");

 
@override
  Widget build(BuildContext context) {
       final size = MediaQuery.of(context).size;
    

  
return       Container(
            height: size.width*0.70,
            width: size.width*0.95,

        child:   BarChart(
  
                    BarChartData(
                     // backgroundColor: Colors.red,
                      alignment: BarChartAlignment.center,
                      minY: 0,
                      maxY: widget.maxY,
                      groupsSpace: 50,
                      barTouchData:  BarTouchData(
                        enabled: false,
                      ),
                      titlesData: FlTitlesData(
    leftTitles: SideTitles(
      showTitles: false
    ),
                        show: true,
                       // leftTitles: LeftTi,
                        bottomTitles: SideTitles(
                          showTitles: true,
                          textStyle: const TextStyle(color: Colors.black, fontSize: 17),
                          margin: 10,
                          rotateAngle: 0,
                          getTitles: (double value) {
                            switch (value.toInt()) {
                              case 0:
                                return '2017';
                              case 1:
                                return '2018';
                              case 2:
                                return '2019';
                   
                              default:
                                return '';
                            }
                          },
                        ),
              
                
                      ),
                      gridData: FlGridData(
                        show: true,
                        drawHorizontalLine: true,
                        checkToShowHorizontalLine: (value) => value % widget.gradle == 1,
                        getDrawingHorizontalLine: (value) {
                          if (value == 0) {
                            return  FlLine(color: Colors.red, strokeWidth: 2);
                          }
                          return  FlLine(
                            color: Colors.grey,
                            strokeWidth: 1,
                          
                          );
                        },
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      barGroups: [
                        BarChartGroupData(
                          x: 0,
                          barRods: [
                            BarChartRodData(
                              color: Colors.transparent,
                              y: widget.ultimoY,
                              width: 80,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(6), topRight: Radius.circular(6)),
                              rodStackItem:  [
                               BarChartRodStackItem(1, 6.5, Color.fromRGBO(115, 213, 250, 0.5)),
                          
                              ],
                            ),
                          ],
                        ),
                        BarChartGroupData(
  
                          x: 1,
                          barRods: [
                            BarChartRodData(
                              color: Colors.transparent,
                              y: widget.penultimoY,
                              width: 80,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(6), topRight: Radius.circular(6)),
                              rodStackItem:  [
                                BarChartRodStackItem(1, 4.7, Color.fromRGBO(191, 115, 250, 0.5)),
                           
                              ],
                            ),
                          ],
                        ),
                        BarChartGroupData(
                          x: 2,
                          barRods: [
                            BarChartRodData(
                              color: Colors.transparent,
                              y: widget.antepenultimoY,
                              width: 80,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(6), topRight: Radius.circular(6)),
                              rodStackItem:  [
                           BarChartRodStackItem(1, 8.7, Color.fromRGBO(250, 170, 115, 0.5)),
                       
                              ],
                            ),
                          ],
                        ),
        
                  
        
             
                      ],
                    ),
                  ),

                  
      );

  }



}
