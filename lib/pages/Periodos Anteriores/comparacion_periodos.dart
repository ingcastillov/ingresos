
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ingresos/pages/Periodos%20Anteriores/filtro_periodos.dart';
import 'package:intl/intl.dart';

import 'dart:math';

class ComparacionPeriodos extends StatefulWidget {
  
 final random = Random();

 

  @override
  _ComparacionPeriodos createState() => _ComparacionPeriodos();
}

class _ComparacionPeriodos extends State<ComparacionPeriodos> {
   
  double comisiones = 320000;

  double bonos = 800000;

  double otrosmovimientos = 222000;

  double impuestos = 1000000;

  final pattern = new NumberFormat("###,###,###.##");

  double saldoDisponible = 84692.87;


    final Color dark = const Color(0xff3b8c75);
  final Color normal = const Color(0xff64caad);
  final Color light = const Color(0xff73e8c9);

  static const double barWidth = 22;

  @override
  void initState() {
    super.initState();

  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.orange,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        centerTitle: true,
        title: Text(
          'Comparacion de Periodos',
          style: TextStyle(color: Colors.blueGrey),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.filter_list,
                color: Colors.orange,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FilterPeriodos()));
              })
        ],
      ),
      body: DefaultTabController(
       
        length: 3,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(
               
                
                isScrollable: true, 
                tabs: [
                Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints.expand(width: 100),
                    // color: Colors.red,
                    //width: 900,
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Tab(
                          text: "Año",
                        ),
                      ],
                    )),
                Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints.expand(width: 100),
                    // color: Colors.red,
                    //width: 900,
                    child: Row(
 mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
               
                        Tab(

                          text: "Mes",
                        ),
                      ],
                    )),
                Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints.expand(width: 100),
                    // color: Colors.red,
                    //width: 900,
                    child: Row(
                     // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                
                        Tab(
                          text: "Acumulado",
                        ),
                      ],
                    )),
         

              ]),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  
                  children: [
               _anualPage(),
                _anualPage2(),
                _anualPage3(),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget _anualPage() {
   final size = MediaQuery.of(context).size;
return  Padding(
  padding: const EdgeInsets.all(16.0),
  child:   Column(
    children: <Widget>[
  
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            
            alignment: Alignment.topLeft,
            child: Text('Detalle Anual de Ingresos', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
          ),
        ),
          Container(
           // height: size.width*0.70,
            width: size.width*0.95,
        child:   BarChart(
  
                    BarChartData(
                     // backgroundColor: Colors.red,
                      alignment: BarChartAlignment.center,
                      maxY: 10,
                      groupsSpace: 50,
                      barTouchData: const BarTouchData(
                        enabled: false,
                      ),
                      titlesData: FlTitlesData(
  
                        show: true,
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
                        leftTitles: SideTitles(
                             
                          showTitles: true,
                          textStyle: const TextStyle(color: Colors.transparent, fontSize: 10),
                          rotateAngle: 45,
                          getTitles: (double value) {
                            if (value == 1) {
                              return '';
                            }
                            return '${value.toInt()}0k';
                          },
                          interval: 5,
                          margin: 1,
                          reservedSize: 0,
  
                        ),
                        rightTitles: SideTitles(
                          showTitles: true,
                          textStyle: const TextStyle(color: Colors.transparent, fontSize: 10),
                          rotateAngle: 90,
                          getTitles: (double value) {
                            if (value == 1) {
                              return '';
                            }
                            return '${value.toInt()}0k';
                          },
                          interval: 5,
                          margin: 1,
                          reservedSize: 0,
                        ),
                      ),
                      gridData: FlGridData(
                        show: true,
                        drawHorizontalLine: true,
                        checkToShowHorizontalLine: (value) => value % 2 == 1,
                        getDrawingHorizontalLine: (value) {
                          if (value == 0) {
                            return const FlLine(color: Colors.red, strokeWidth: 2);
                          }
                          return const FlLine(
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
                              y: 10,
                              width: 80,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(6), topRight: Radius.circular(6)),
                              rodStackItem: const [
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
                              y: 10,
                              width: 80,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(6), topRight: Radius.circular(6)),
                              rodStackItem: const [
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
                              y: 10,
                              width: 80,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(6), topRight: Radius.circular(6)),
                              rodStackItem: const [
                           BarChartRodStackItem(1, 8.7, Color.fromRGBO(250, 170, 115, 0.5)),
                       
                              ],
                            ),
                          ],
                        ),
        
                  
        
             
                      ],
                    ),
                  ),

                  
      ),

      Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            
            alignment: Alignment.topLeft,
            child: Text('', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
          ),
        ),

        DataTable(
dataRowHeight: 30,
columnSpacing: 40,
horizontalMargin: 45,
              //  sortColumnIndex: 2,
                sortAscending: false,
                columns: [

                  DataColumn(
                     
                    label: Text("Año", style: TextStyle(fontSize: 16, color: Colors.black),)),
                  DataColumn(label: Text("Monto\nAnual",  style: TextStyle(fontSize: 16,  color: Colors.black))),
                  DataColumn(label: Text("Incremento",  style: TextStyle(fontSize: 16,  color: Colors.black))),
                ],
                rows: [
                  DataRow(
                   // selected: true,
                    cells: [
                 //   DataCell(Text("Andres"), showEditIcon: true),
                    DataCell(Text("2017", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Text("\u00245500", style: TextStyle(fontSize: 16, color: Colors.grey))),
                      DataCell(Row(
                      children: <Widget>[
                        Icon(Icons.arrow_upward, color: Colors.green,),
                        Text(" % 4.0", style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    ))
                  ]),
                  DataRow(cells: [
                    DataCell(Text("2018", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Text("\u00245500", style: TextStyle(fontSize: 16, color: Colors.grey))),
                      DataCell(Row(
                      children: <Widget>[
                        Icon(Icons.arrow_downward, color: Colors.red,),
                        Text(" % 4.0", style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    ))
                  ]),
                     DataRow(cells: [
                    DataCell(Text("2019", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Text("\u00245500", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Row(
                      children: <Widget>[
                        Icon(Icons.arrow_upward, color: Colors.green,),
                        Text(" % 4.0", style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    ))
                  ]),
               

                ],
              )
    ],
  ),
);
      

  

}


  Widget _anualPage2() {

  final List<int> showIndexes = const [2];
  final List<FlSpot> allSpots = [
    FlSpot(0, 1),
    FlSpot(1, 2),
    FlSpot(2, 1),
    FlSpot(3, 2),
    FlSpot(4, 2),
    FlSpot(5, 1),
    FlSpot(6, 1),
    FlSpot(7, 9),
    FlSpot(8, 2),
    FlSpot(9, 2),
    FlSpot(10, 2),
    FlSpot(11, 2),
  ];
  final List<int> showIndexes2 = const [2];
    final List<FlSpot> allSpots2 = [
    FlSpot(0, 1),
    FlSpot(1, 8),
    FlSpot(2, 1),
    FlSpot(3, 7),
    FlSpot(4, 2),
    FlSpot(5, 5),
    FlSpot(6, 1),
    FlSpot(7, 3),
    FlSpot(8, 2),
    FlSpot(9, 2),
    FlSpot(10, 2),
    FlSpot(11, 2),
  ];

    final List<int> showIndexes3 = const [2];
    final List<FlSpot> allSpots3 = [
    FlSpot(0, 1),
    FlSpot(1, 3),
    FlSpot(2, 1),
    FlSpot(3, 7),
    FlSpot(4, 5),
    FlSpot(5, 2),
    FlSpot(6, 9),
    FlSpot(7, 3),
    FlSpot(8, 2),
    FlSpot(9, 2),
    FlSpot(10, 2),
    FlSpot(11, 2),
  ];



   final lineBarsData = [
      LineChartBarData(
        

          showingIndicators: showIndexes,
          spots: allSpots,
          isCurved: true,
          barWidth: 2,
          belowBarData: BarAreaData(
            show: true,
            colors: [
          Colors.blue.withOpacity(0.25),
           Colors.blue.withOpacity(0.25),
          Colors.blue.withOpacity(0.25),
            ],
          ),
          dotData: FlDotData(show: false),
          colors: [
          Colors.blue.withOpacity(0.25),
           Colors.blue.withOpacity(0.25),
           Colors.blue.withOpacity(0.25),
          ],
          colorStops: [
            0.1,
            0.4,
            0.9
          ]),


      LineChartBarData(
          showingIndicators: showIndexes2,
          spots: allSpots2,
          isCurved: true,
          barWidth: 2,
          belowBarData: BarAreaData(
            show: true,
            colors: [
        Colors.deepPurple.withOpacity(0.25),
           Colors.deepPurple.withOpacity(0.25),
           Colors.deepPurple.withOpacity(0.25),
            ],
          ),
          dotData: FlDotData(show: false),
          colors: [
             Colors.deepPurple.withOpacity(0.25),
           Colors.deepPurple.withOpacity(0.25),
           Colors.deepPurple.withOpacity(0.25),
          ],
          colorStops: [
            0.1,
            0.4,
            0.9
          ]),

        LineChartBarData(
          showingIndicators: showIndexes3,
          spots: allSpots3,
          isCurved: true,
          barWidth: 2,
          belowBarData: BarAreaData(
            show: true,
            colors: [
         Colors.deepOrange.withOpacity(0.25),
           Colors.deepOrange.withOpacity(0.25),
          Colors.deepOrange.withOpacity(0.25),
     
            ],
          ),
          dotData: FlDotData(show: false),
          colors: [
        Colors.deepOrange.withOpacity(0.25),
           Colors.deepOrange.withOpacity(0.25),
          Colors.deepOrange.withOpacity(0.25),
          ],
          colorStops: [
            0.1,
            0.4,
            0.9
          ]),

          

    ];

   // final LineChartBarData tooltipsOnBar = lineBarsData[0];
  final size = MediaQuery.of(context).size;


return Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Text('Selecciona el Mes a Comparar'),),
    ),
       Container(
       //height: 100,
         width: size.width*1,
         child: LineChart(

              LineChartData(
              
            /*     showingTooltipIndicators: showIndexes.map((index) {
                /*  return ShowingTooltipIndicators(index, [
                    LineBarSpot(
                        tooltipsOnBar, lineBarsData.indexOf(tooltipsOnBar), tooltipsOnBar.spots[index]),
                  ]); */
                }).toList(), */
                lineTouchData: LineTouchData(
                  enabled: false,
                  getTouchedSpotIndicator: (LineChartBarData barData, List<int> spotIndexes) {
                    return spotIndexes.map((index) {
                      return TouchedSpotIndicatorData(
                        FlLine(
                          color: Colors.pink,

                        ),
                        FlDotData(
                          show: true,
                          dotSize: 8,
                      //    strokeWidth: 2,
                       //   getStrokeColor: (spot, percent, barData) => Colors.black,
                        /*   getDotColor: (spot, percent, barData) {
                            return lerpGradient(barData.colors, barData.colorStops, percent / 100);
                          }, */
                        ),
                      );
                    }).toList();
                  },
                  touchTooltipData: LineTouchTooltipData(
                    tooltipBgColor: Colors.pink,
                    tooltipRoundedRadius: 8,
                    getTooltipItems: (List<LineBarSpot> lineBarsSpot) {
                      return lineBarsSpot.map((lineBarSpot) {
                        return LineTooltipItem(
                          lineBarSpot.y.toString(),
                          const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        );
                      }).toList();
                    },
                  ),

                ),
                lineBarsData: lineBarsData,
                minY: 0,
                titlesData: FlTitlesData(
                  leftTitles: SideTitles(
                    showTitles: false,
                  ),

                  bottomTitles: SideTitles(
                   // reservedSize: 80,

                      showTitles: true,
                      interval: 1.8,
                      getTitles: (val) {
                        switch (val.toInt()) {
                          case 0:
                            return 'ENERO';
                        
                          case 1:
                            return 'FEBRERO';
                          case 2:
                            return 'MARZO';
                          case 3:
                            return 'ABRIL';
                          case 4:
                            return 'MAYO';
                          case 5:
                            return 'JUNIO';
                          case 6:
                            return 'JULIO';
                          case 7:
                            return 'AGOSTO';
                          case 8:
                            return 'SEPTIEMBRE';
                          case 9:
                            return 'OCTUBRE';
                          case 10:
                            return 'NOVIEMBRE';
                          case 11:
                            return 'DICIEMBRE';
                     
                        }
                        return '';
                      },  
                      
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                        fontFamily: 'Digital',
                        fontSize: 10,
                      )),
                ),
             /*    axisTitleData: FlAxisTitleData(
                  rightTitle: AxisTitle(showTitle: true, titleText: 'count'),
                  leftTitle: AxisTitle(showTitle: true, titleText: 'count'),
                  topTitle:
                      AxisTitle(showTitle: true, titleText: 'Wall clock', textAlign: TextAlign.left),
                ), */
                        gridData: FlGridData(show: true,
                  drawHorizontalLine: true,
                        checkToShowHorizontalLine: (value) => value % 2 == 1,
                        getDrawingHorizontalLine: (value) {
                          if (value == 0) {
                            return const FlLine(color: Colors.red, strokeWidth: 2);
                          }
                          return const FlLine(
                            color: Colors.grey,
                            strokeWidth: 1,
                          
                          );
                        },
                ),
                borderData: FlBorderData(
                  show: false,
                ),
              ),
            ),
       ),

           Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Text('Febrero', style: TextStyle(fontSize: 20),),),
    ),

            DataTable(
dataRowHeight: 30,
columnSpacing: 40,
horizontalMargin: 45,
              //  sortColumnIndex: 2,
                sortAscending: false,
                columns: [

                  DataColumn(
                     
                    label: Text("Año", style: TextStyle(fontSize: 16, color: Colors.black),)),
                  DataColumn(label: Text("Monto\nMensual",  style: TextStyle(fontSize: 16,  color: Colors.black))),
                  DataColumn(label: Text("Incremento",  style: TextStyle(fontSize: 16,  color: Colors.black))),
                ],
                rows: [
                  DataRow(
                   // selected: true,
                    cells: [
                 //   DataCell(Text("Andres"), showEditIcon: true),
                    DataCell(Text("2019", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Text("\u00245500", style: TextStyle(fontSize: 16, color: Colors.grey))),
                      DataCell(Row(
                      children: <Widget>[
                        Icon(Icons.arrow_upward, color: Colors.green,),
                        Text(" % 4.0", style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    ))
                  ]),
                  DataRow(cells: [
                    DataCell(Text("2018", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Text("\u00245500", style: TextStyle(fontSize: 16, color: Colors.grey))),
                      DataCell(Row(
                      children: <Widget>[
                        Icon(Icons.arrow_downward, color: Colors.red,),
                        Text(" % 4.0", style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    ))
                  ]),
                     DataRow(cells: [
                    DataCell(Text("2017", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Text("\u00245500", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Row(
                      children: <Widget>[
                        Icon(Icons.arrow_upward, color: Colors.green,),
                        Text(" % 4.0", style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    ))
                  ]),
               

                ],
              )


       
       ]
       ); 
       
       }


  Widget _anualPage3() {

  final List<int> showIndexes = const [2];
  final List<FlSpot> allSpots = [
    FlSpot(0, 2),
    FlSpot(1, 2),
    FlSpot(2, 1),
    FlSpot(3, 0),
    FlSpot(4, 0),
    FlSpot(5, 0),
     FlSpot(6, 0),

  ];
  final List<int> showIndexes2 = const [2];
    final List<FlSpot> allSpots2 = [
  FlSpot(0, 2),
    FlSpot(1, 8),
    FlSpot(2, 1),
    FlSpot(3, 0),
    FlSpot(4, 0),
    FlSpot(5, 0),
     FlSpot(6, 0),

  ];

    final List<int> showIndexes3 = const [2];
    final List<FlSpot> allSpots3 = [
    FlSpot(0, 2),
    FlSpot(1, 3),
    FlSpot(2, 1),
    FlSpot(3, 0),
    FlSpot(4, 0),
    FlSpot(5, 0),
    FlSpot(5, 0),
    FlSpot(6, 0),

  ];



   final lineBarsData = [
      LineChartBarData(
         

          showingIndicators: showIndexes,
          spots: allSpots,
          isCurved: true,
          barWidth: 2,
          belowBarData: BarAreaData(
            show: true,
            colors: [
          Colors.blue.withOpacity(0.25),
           Colors.blue.withOpacity(0.25),
          Colors.blue.withOpacity(0.25),
            ],
          ),
          dotData: FlDotData(show: false),
          colors: [
          Colors.blue.withOpacity(0.25),
           Colors.blue.withOpacity(0.25),
           Colors.blue.withOpacity(0.25),
          ],
          colorStops: [
            0.1,
            0.4,
            0.9
          ]),


      LineChartBarData(
          showingIndicators: showIndexes2,
          spots: allSpots2,
          isCurved: true,
          barWidth: 2,
          belowBarData: BarAreaData(
            show: true,
            colors: [
        Colors.deepPurple.withOpacity(0.25),
           Colors.deepPurple.withOpacity(0.25),
           Colors.deepPurple.withOpacity(0.25),
            ],
          ),
          dotData: FlDotData(show: false),
          colors: [
             Colors.deepPurple.withOpacity(0.25),
           Colors.deepPurple.withOpacity(0.25),
           Colors.deepPurple.withOpacity(0.25),
          ],
          colorStops: [
            0.1,
            0.4,
            0.9
          ]),

        LineChartBarData(
          showingIndicators: showIndexes3,
          spots: allSpots3,
          isCurved: true,
          barWidth: 2,
          belowBarData: BarAreaData(
            show: true,
            colors: [
         Colors.deepOrange.withOpacity(0.25),
           Colors.deepOrange.withOpacity(0.25),
          Colors.deepOrange.withOpacity(0.25),
     
            ],
          ),
          dotData: FlDotData(show: false),
          colors: [
        Colors.deepOrange.withOpacity(0.25),
           Colors.deepOrange.withOpacity(0.25),
          Colors.deepOrange.withOpacity(0.25),
          ],
          colorStops: [
            0.1,
            0.4,
            0.9
          ]),

          

    ];

   // final LineChartBarData tooltipsOnBar = lineBarsData[0];
  final size = MediaQuery.of(context).size;


return Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Text('Total acumulado de enero al mes seleccionado'),),
    ),
       Container(
       //height: 100,
         width: size.width*1,
         child: LineChart(

              LineChartData(
                  
            /*     showingTooltipIndicators: showIndexes.map((index) {
                /*  return ShowingTooltipIndicators(index, [
                    LineBarSpot(
                        tooltipsOnBar, lineBarsData.indexOf(tooltipsOnBar), tooltipsOnBar.spots[index]),
                  ]); */
                }).toList(), */
                lineTouchData: LineTouchData(
                  enabled: false,
                  getTouchedSpotIndicator: (LineChartBarData barData, List<int> spotIndexes) {
                    return spotIndexes.map((index) {
                      return TouchedSpotIndicatorData(
                        FlLine(
                          color: Colors.pink,
                        ),
                        FlDotData(
                          show: true,
                          dotSize: 8,
                      //    strokeWidth: 2,
                       //   getStrokeColor: (spot, percent, barData) => Colors.black,
                        /*   getDotColor: (spot, percent, barData) {
                            return lerpGradient(barData.colors, barData.colorStops, percent / 100);
                          }, */
                        ),
                      );
                    }).toList();
                  },
                  touchTooltipData: LineTouchTooltipData(
                    tooltipBgColor: Colors.pink,
                    tooltipRoundedRadius: 8,
                    getTooltipItems: (List<LineBarSpot> lineBarsSpot) {
                      return lineBarsSpot.map((lineBarSpot) {
                        return LineTooltipItem(
                          lineBarSpot.y.toString(),
                          const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        );
                      }).toList();
                    },
                  ),
                ),
                lineBarsData: lineBarsData,
                minX: 0,
                minY: 0,
                titlesData: FlTitlesData(
                  leftTitles: SideTitles(
                    showTitles: false,
                  ),
                 // show: true,
                  bottomTitles: SideTitles(
                   // reservedSize: 100,
                     
                      showTitles: false,
                      interval:0.9,
                      getTitles: (val) {
                        switch (val.toInt()) {
                    
                        
                          case 0:
                            return 'ENERO';
                          case 1:
                            return 'FEBRERO';
                          case 2:
                            return 'MARZO';
                          case 3:
                            return 'ABRIL';
                          case 4:
                            return 'MAYO';
                              case 5:
                            return 'JUNIO';
                               case 6:
                            return 'JULIO';
                     
                        }
                        return '';
                      },  
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                        fontFamily: 'Digital',
                        fontSize: 10,
                      )),
                ),
             /*    axisTitleData: FlAxisTitleData(
                  rightTitle: AxisTitle(showTitle: true, titleText: 'count'),
                  leftTitle: AxisTitle(showTitle: true, titleText: 'count'),
                  topTitle:
                      AxisTitle(showTitle: true, titleText: 'Wall clock', textAlign: TextAlign.left),
                ), */
                gridData: FlGridData(show: true,
                  drawHorizontalLine: true,
                        checkToShowHorizontalLine: (value) => value % 2 == 0,
                        getDrawingHorizontalLine: (value) {
                          if (value == 0) {
                            return const FlLine(color: Colors.red, strokeWidth: 2);
                          }
                          return const FlLine(
                            color: Colors.grey,
                            strokeWidth: 1,
                          
                          );
                        },
                ),
                borderData: FlBorderData(
                  show: false,
                ),
              ),
            ),
       ),
           Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Text('Acumulado Febrero', style: TextStyle(fontSize: 20),),),
    ),

            DataTable(
dataRowHeight: 30,
columnSpacing: 40,
horizontalMargin: 45,
              //  sortColumnIndex: 2,
                sortAscending: false,
                columns: [

                  DataColumn(
                     
                    label: Text("Año", style: TextStyle(fontSize: 16, color: Colors.black),)),
                  DataColumn(label: Text("Monto\nMensual",  style: TextStyle(fontSize: 16,  color: Colors.black))),
                  DataColumn(label: Text("Incremento",  style: TextStyle(fontSize: 16,  color: Colors.black))),
                ],
                rows: [
                  DataRow(
                   // selected: true,
                    cells: [
                 //   DataCell(Text("Andres"), showEditIcon: true),
                    DataCell(Text("2019", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Text("\u00245500", style: TextStyle(fontSize: 16, color: Colors.grey))),
                      DataCell(Row(
                      children: <Widget>[
                        Icon(Icons.arrow_upward, color: Colors.green,),
                        Text(" % 4.0", style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    ))
                  ]),
                  DataRow(cells: [
                    DataCell(Text("2018", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Text("\u00245500", style: TextStyle(fontSize: 16, color: Colors.grey))),
                      DataCell(Row(
                      children: <Widget>[
                        Icon(Icons.arrow_downward, color: Colors.red,),
                        Text(" % 4.0", style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    ))
                  ]),
                     DataRow(cells: [
                    DataCell(Text("2017", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Text("\u00245500", style: TextStyle(fontSize: 16, color: Colors.grey))),
                    DataCell(Row(
                      children: <Widget>[
                        Icon(Icons.arrow_upward, color: Colors.green,),
                        Text(" % 4.0", style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    ))
                  ]),
               

                ],
              )
       
       ]
       ); 
       
       }


       }



  
 
