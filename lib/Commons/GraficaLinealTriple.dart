import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class GraficaLinealTriple extends StatefulWidget {

   final double gradle;

  

  final double eneTotal;
  final double febTotal;
  final double marTotal;
  final double abrTotal;
  final double mayTotal;
  final double junTotal;
  final double julTotal;
  final double agoTotal;
  final double sepTotal;
  final double octTotal;
  final double novTotal;
  final double dicTotal;

  final double enePorcentaje;
  final double febPorcentaje;
  final double marPorcentaje;
  final double abrPorcentaje;
  final double mayPorcentaje;
  final double junPorcentaje;
  final double julPorcentaje;
  final double agoPorcentaje;
  final double sepPorcentaje;
  final double octPorcentaje;
  final double novPorcentaje;
  final double dicPorcentaje;

  final double enePorcentaje2;
  final double febPorcentaje2;
  final double marPorcentaje2;
  final double abrPorcentaje2;
  final double mayPorcentaje2;
  final double junPorcentaje2;
  final double julPorcentaje2;
  final double agoPorcentaje2;
  final double sepPorcentaje2;
  final double octPorcentaje2;
  final double novPorcentaje2;
  final double dicPorcentaje2;

    final double enePorcentaje3;
  final double febPorcentaje3;
  final double marPorcentaje3;
  final double abrPorcentaje3;
  final double mayPorcentaje3;
  final double junPorcentaje3;
  final double julPorcentaje3;
  final double agoPorcentaje3;
  final double sepPorcentaje3;
  final double octPorcentaje3;
  final double novPorcentaje3;
  final double dicPorcentaje3;


final eneContenido;
final febContenido;
final marContenido;
final abrContenido;
final mayContenido;
final junContenido;
final julContenido;
final agoContenido;
final sepContenido;
final octContenido;
final novContenido;
final dicContenido;


final double maxY;
final double eneY;
final double febY;
final double marY;
final double abrY;
final double mayY;
final double junY;
final double julY;
final double agoY;
final double sepY;
final double octY;
final double novY;
final double dicY;

final double eneY2;
final double febY2;
final double marY2;
final double abrY2;
final double mayY2;
final double junY2;
final double julY2;
final double agoY2;
final double sepY2;
final double octY2;
final double novY2;
final double dicY2;


final double eneY3;
final double febY3;
final double marY3;
final double abrY3;
final double mayY3;
final double junY3;
final double julY3;
final double agoY3;
final double sepY3;
final double octY3;
final double novY3;
final double dicY3;


final bool acumulado;


  final onPressed;

   GraficaLinealTriple(
      {Key key,
     
      @required this.gradle,
      @required this.eneTotal,
      @required this.febTotal,
      @required this.marTotal,
      @required this.abrTotal,
      @required this.mayTotal,
      @required this.junTotal,
      @required this.julTotal,
      @required this.agoTotal,
      @required this.sepTotal,
      @required this.octTotal,
      @required this.novTotal,
      @required this.dicTotal,

@required this.enePorcentaje,
@required this.febPorcentaje,
@required this.marPorcentaje,
@required this.abrPorcentaje,
@required this.mayPorcentaje,
@required this.junPorcentaje,
@required this.julPorcentaje,
@required this.agoPorcentaje,
@required this.sepPorcentaje,
@required this.octPorcentaje,
@required this.novPorcentaje,
@required this.dicPorcentaje,

@required this.enePorcentaje2,
@required this.febPorcentaje2,
@required this.marPorcentaje2,
@required this.abrPorcentaje2,
@required this.mayPorcentaje2,
@required this.junPorcentaje2,
@required this.julPorcentaje2,
@required this.agoPorcentaje2,
@required this.sepPorcentaje2,
@required this.octPorcentaje2,
@required this.novPorcentaje2,
@required this.dicPorcentaje2,

@required this.enePorcentaje3,
@required this.febPorcentaje3,
@required this.marPorcentaje3,
@required this.abrPorcentaje3,
@required this.mayPorcentaje3,
@required this.junPorcentaje3,
@required this.julPorcentaje3,
@required this.agoPorcentaje3,
@required this.sepPorcentaje3,
@required this.octPorcentaje3,
@required this.novPorcentaje3,
@required this.dicPorcentaje3,


@required this.eneContenido,
@required this.febContenido,
@required this.marContenido,
@required this.abrContenido,
@required this.mayContenido,
@required this.junContenido,
@required this.julContenido,
@required this.agoContenido,
@required this.sepContenido,
@required this.octContenido,
@required this.novContenido,
@required this.dicContenido,


@required this.maxY,
@required this.eneY,
@required this.febY,
@required this.marY,
@required this.abrY,
@required this.mayY,
@required this.junY,
@required this.julY,
@required this.agoY,
@required this.sepY,
@required this.octY,
@required this.novY,
@required this.dicY,


@required this.eneY2,
@required this.febY2,
@required this.marY2,
@required this.abrY2,
@required this.mayY2,
@required this.junY2,
@required this.julY2,
@required this.agoY2,
@required this.sepY2,
@required this.octY2,
@required this.novY2,
@required this.dicY2,


@required this.eneY3,
@required this.febY3,
@required this.marY3,
@required this.abrY3,
@required this.mayY3,
@required this.junY3,
@required this.julY3,
@required this.agoY3,
@required this.sepY3,
@required this.octY3,
@required this.novY3,
@required this.dicY3,


@required this.acumulado,


 
     this.onPressed,
   
  }): super(key: key);
    GraficaLinealState createState() => new GraficaLinealState();
}

class GraficaLinealState extends State<GraficaLinealTriple> {
 
  String mesTabla;
  String mesPorcentaje;
   String mesPorcentaje2;
    String mesPorcentaje3;

  bool eneSeleccionado = false;
  bool febSeleccionado = false;
  bool marSeleccionado = false;
  bool abrSeleccionado = false;
  bool maySeleccionado = false;
  bool junSeleccionado = false;
  bool julSeleccionado = false;
  bool agoSeleccionado = false;
  bool sepSeleccionado = false;
  bool octSeleccionado = false;
  bool novSeleccionado = false;
  bool dicSeleccionado = false;
  final azulMarino =  Color.fromRGBO(4, 54, 129, 1);
  int variable=0;
    var estiloTitulo = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black54,
    fontFamily: 'Digital',
    fontSize: 16,
  );
  var estiloLetraBlanca = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: 'Digital',
    fontSize: 16,
  );
  final pattern = new NumberFormat("###,###,###.##");

  
  var indicadorMesSeleccionado = BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    color: Colors.orange,
  );

    var indicadorMesSeleccionadoAnterior = BoxDecoration(
   // borderRadius: BorderRadius.circular(30),
    color: Color.fromRGBO(255, 234, 142, 1)
  );
 
@override
  Widget build(BuildContext context) {
       final size = MediaQuery.of(context).size;

    final List<int> showIndexes = [variable];

 
  
      
    final List<FlSpot> allSpots = [
     
      FlSpot(1, widget.eneY),
      FlSpot(2, widget.febY),
      FlSpot(3, widget.marY),
      FlSpot(4, widget.abrY),
      FlSpot(5, widget.mayY),
      FlSpot(6, widget.junY),
      FlSpot(7, widget.julY),
      FlSpot(8, widget.agoY),
      FlSpot(9, widget.sepY),
      FlSpot(10, widget.octY),
      FlSpot(11, widget.novY),
      FlSpot(12, widget.dicY),
     
     
  
    ];

     final List<FlSpot> allSpots2 = [
     
      FlSpot(1, widget.eneY2),
      FlSpot(2, widget.febY2),
      FlSpot(3, widget.marY2),
      FlSpot(4, widget.abrY2),
      FlSpot(5, widget.mayY2),
      FlSpot(6, widget.junY2),
      FlSpot(7, widget.julY2),
      FlSpot(8, widget.agoY2),
      FlSpot(9, widget.sepY2),
      FlSpot(10, widget.octY2),
      FlSpot(11, widget.novY2),
      FlSpot(12, widget.dicY2),
     
     
  
    ];

     final List<FlSpot> allSpots3 = [
     
      FlSpot(1, widget.eneY3),
      FlSpot(2, widget.febY3),
      FlSpot(3, widget.marY3),
      FlSpot(4, widget.abrY3),
      FlSpot(5, widget.mayY3),
      FlSpot(6, widget.junY3),
      FlSpot(7, widget.julY3),
      FlSpot(8, widget.agoY3),
      FlSpot(9, widget.sepY3),
      FlSpot(10, widget.octY3),
      FlSpot(11, widget.novY3),
      FlSpot(12, widget.dicY3),
     
     
  
    ];

    final lineBarsData = [
      LineChartBarData(
        //  showingIndicators: showIndexes  ,
          
          spots: allSpots,
          isCurved: true,
          barWidth: 4,
           show: true,
          belowBarData: BarAreaData(
            show: true,
            colors: [
             Color.fromRGBO(31, 71, 164, 0.25),
            
            ],
          ),
          dotData: FlDotData(show: false),

          colors: [
            Color.fromRGBO(31, 71, 164, 0.25),
           
          
         
          ],
          colorStops: [
            0.4,
          ]),
               LineChartBarData(
        //  showingIndicators: showIndexes  ,
          
          spots: allSpots2,
          isCurved: true,
          barWidth: 4,
           show: true,
          belowBarData: BarAreaData(
            show: true,
            colors: [
         Color.fromRGBO(126, 43, 232, 0.30),
            
            ],
          ),
          dotData: FlDotData(show: false),

          colors: [
          Color.fromRGBO(126, 43, 232, 0.30),
         
          ],
          colorStops: [
            0.05,
          ]),
               LineChartBarData(
          showingIndicators: showIndexes  ,
           
          spots: allSpots3,
          isCurved: true,
          barWidth: 4,
           show: true,
          belowBarData: BarAreaData(
            show: true,
            colors: [
     Color.fromRGBO(254, 100, 0, 0.30),
  
            ],
          ),
          dotData: FlDotData(show: false),

          colors: [
                  Color.fromRGBO(254, 100, 0, 0.30),
               
         
          ],
          colorStops: [
            0.1,
            0.4,
            0.9
          ]),
    ];



  
     //ESTA VARIABLE ES NECESARIA PARA LOS CUADROS DE TEXTO
    final LineChartBarData tooltipsOnBar = lineBarsData[0];

    return Column(children: <Widget>[
   //ESTA ES LA PRIMERA GRAFICA
      Container(
        height: 300,
        width: size.width * 1,
        child: LineChart(
          LineChartData(
           //ESTO MUESTRA LOS CUADROS DE TEXTO
              showingTooltipIndicators: showIndexes.map((index) {
             return ShowingTooltipIndicators(index, [
              LineBarSpot(
                  tooltipsOnBar, lineBarsData.indexOf(tooltipsOnBar), tooltipsOnBar.spots[index]),
            ]);
          }).toList(), 

          //AQUI VA LA INFORMACION DE LA GRAFICA INCLUYENDO EL PUNTO Y EL CONTENIDO DE LA TABLA
            lineTouchData: LineTouchData(
              enabled: false,

            getTouchedSpotIndicator: (LineChartBarData barData, List<int> spotIndexes) {
              return spotIndexes.map((index) {
                return TouchedSpotIndicatorData(
                  FlLine(
                    color: Color.fromRGBO(4, 54, 129, 0.2),

                  ),
                  FlDotData(
                  dotSize: 4,
                          strokeWidth: 5,
                          getDotColor: (spot, percent, barData) => Colors.white,
                          getStrokeColor: (spot, percent, barData) => Color.fromRGBO(254, 100, 0, 1),
                  ),
                );
              }).toList();
            },
            touchTooltipData: 
            
          LineTouchTooltipData(
              
              maxContentWidth: 500,
              fitInsideHorizontally: true,
              fitInsideVertically: true,
              tooltipBgColor: Color.fromRGBO(203, 218, 246, 1),
              tooltipRoundedRadius: 8,
              getTooltipItems: (List<LineBarSpot> lineBarsSpot) {

 
                return lineBarsSpot.map((lineBarSpot) {
                   datosdeTabla();
                   return LineTooltipItem(
                    
                  mesTabla+'\n'+'2019'+'\t\t\t\t'+mesPorcentaje+'%'+'\n'+'2018'+'\t\t\t\t'+mesPorcentaje2+'%'+'\n'+'2017'+'\t\t\t\t'+mesPorcentaje3+'%',
     
                  //  lineBarSpot.y.toString(),
                     TextStyle(color: azulMarino, fontSize: 14),
                  ); 
                }).toList();
              },
            ),
            ),
            lineBarsData: lineBarsData,
            minY: 0,
            maxY: widget.maxY,
          /*   maxX: 12,
            minX: 0, */
            titlesData: FlTitlesData(
              // show: true,
              leftTitles: SideTitles(
                showTitles: false,
              ),

              bottomTitles: SideTitles(
                  //  reservedSize: 80,
                  // reservedSize: 80,
                  //margin: 6,
                  showTitles: false,
                  // reservedSize: 100,
                  // interval: 1.5,
                  getTitles: (val) {
                    switch (val.toInt()) {
    
                      
                      case 1:
                        return 'Ene';

                      case 2:
                        return 'Feb';
                      case 3:
                        return 'Mar';
                      case 4:
                        return 'Abr';
                      case 5:
                        return 'May';
                      case 6:
                        return 'Jun';
                      case 7:
                        return 'Jul';
                      case 8:
                        return 'Ago';
                      case 9:
                        return 'Sep';
                      case 10:
                        return 'Oct';
                      case 11:
                        return 'Nov';
                      case 12:
                        return 'Dic';
                
                    
                    }
                    return '';
                  },
                  reservedSize: 50,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontFamily: 'Digital',
                    fontSize: 16,
                  )),
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
          ),


        ),
      ),





      DefaultTabController(
        initialIndex: 0,
        length: 12,
        child: Column(
          children: <Widget>[
            Container(
             // color: Colors.red,
              child: TabBar(

                indicatorColor: Colors.transparent,
                // labelColor: Colors.orange,
                labelPadding: EdgeInsets.symmetric(horizontal: 0),
                onTap: (value) {
                  setState(() {
          if(widget.acumulado){
if (value == 0) {
                    eneSeleccionado = true;
                      variable=0;
                    } else {
                      eneSeleccionado = false;
                    
                    }
                    if (value == 1) {
                      febSeleccionado = true;
                       variable=1;
                    } else {
                      febSeleccionado = false;
                    }
                    if (value == 2) {
                      marSeleccionado = true;
                      variable=2;
                    } else {
                      marSeleccionado = false;
                    }
                    if (value == 3) {
                      abrSeleccionado = true;
                      variable=3;
                    } else {
                      abrSeleccionado = false;
                      
                    }
                    if (value == 4) {
                      maySeleccionado = true;
                      variable=4;
                    } else {
                      maySeleccionado = false;
                    }
                    if (value == 5) {
                      junSeleccionado = true;
                      variable=5;
                    } else {
                      junSeleccionado = false;
                    }
                    if (value == 6) {
                      julSeleccionado = true;
                      variable=6;
                    } else {
                      julSeleccionado = false;
                    }
                    if (value == 7) {
                      agoSeleccionado = true;
                      variable=7;
                    } else {
                      agoSeleccionado = false;
                    }
                    if (value == 8) {
                      sepSeleccionado = true;
                      variable=8;
                    } else {
                      sepSeleccionado = false;
                    }
                    if (value == 9) {
                      octSeleccionado = true;
                      variable=9;
                    } else {
                      octSeleccionado = false;
                    }
                    if (value == 10) {
                      novSeleccionado = true;
                      variable=10;
                    } else {
                      novSeleccionado = false;
                    }
                    if (value == 11) {
                      dicSeleccionado = true;
                      variable=11;
                    } else {
                      dicSeleccionado = false;
                    }


          }
          else{
        if (value == 0) {
                    eneSeleccionado = true;
                      variable=0;
                    } else {
                      eneSeleccionado = false;
                    
                    }
                    if (value == 1) {
                      febSeleccionado = true;
                       variable=1;
                    } else {
                      febSeleccionado = false;
                    }
                    if (value == 2) {
                      marSeleccionado = true;
                      variable=2;
                    } else {
                      marSeleccionado = false;
                    }
                    if (value == 3) {
                      abrSeleccionado = true;
                      variable=3;
                    } else {
                      abrSeleccionado = false;
                      
                    }
                    if (value == 4) {
                      maySeleccionado = true;
                      variable=4;
                    } else {
                      maySeleccionado = false;
                    }
                    if (value == 5) {
                      junSeleccionado = true;
                      variable=5;
                    } else {
                      junSeleccionado = false;
                    }
                    if (value == 6) {
                      julSeleccionado = true;
                      variable=6;
                    } else {
                      julSeleccionado = false;
                    }
                    if (value == 7) {
                      agoSeleccionado = true;
                      variable=7;
                    } else {
                      agoSeleccionado = false;
                    }
                    if (value == 8) {
                      sepSeleccionado = true;
                      variable=8;
                    } else {
                      sepSeleccionado = false;
                    }
                    if (value == 9) {
                      octSeleccionado = true;
                      variable=9;
                    } else {
                      octSeleccionado = false;
                    }
                    if (value == 10) {
                      novSeleccionado = true;
                      variable=10;
                    } else {
                      novSeleccionado = false;
                    }
                    if (value == 11) {
                      dicSeleccionado = true;
                      variable=11;
                    } else {
                      dicSeleccionado = false;
                    }
          }
            
                  });
                },
                isScrollable: true,
                tabs: [
                  //ENERO
                  //SI ESTAMOS EN ACUMULADO EVALUA SI LA VARIABLE ES MENOR PARA PINTAR RASTRO
                widget.acumulado && variable > 0 ?  Container(
                 
                      height: 30,
                      width: 55,
                  decoration: variable > 0 ? indicadorMesSeleccionadoAnterior : null,
                                  
                      child: Tab(
                        child: Text('Ene',
                            style: eneSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
              // DE LO CONTRARIO VA A PINTAR DE COLOR NARANJA CUANDO SEA SELECCIONADO
                widget.acumulado ?  Container(
                 
                      height: 30,
                      width: 55,
                  decoration: eneSeleccionado ? indicadorMesSeleccionado  : null,
                                  
                      child: Tab(
                        child: Text('Ene',
                            style: eneSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
                //AQUI VA A PINTAR EN CASO QUE NO SEA GRAFICA DE ACUMULADO
                Container(
                   
                      height: 30,
                      width: 55,
                      decoration: eneSeleccionado ? indicadorMesSeleccionado : null,

                      child: Tab(
                        child: Text('Ene',
                            style: eneSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),
                   //FEBRERO
                  //SI ESTAMOS EN ACUMULADO EVALUA SI LA VARIABLE ES MENOR PARA PINTAR RASTRO
                widget.acumulado && variable > 1 ?  Container(
                      height: 30,
                      width: 55,
                  decoration: variable > 1 ? indicadorMesSeleccionadoAnterior : null,
                                  
                      child: Tab(
                        child: Text('Feb',
                            style: febSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
              // DE LO CONTRARIO VA A PINTAR DE COLOR NARANJA CUANDO SEA SELECCIONADO
                widget.acumulado ?  Container(
                   
                      height: 30,
                      width: 55,
                  decoration: febSeleccionado ? indicadorMesSeleccionado  : null,
                                  
                      child: Tab(
                        child: Text('Feb',
                            style: febSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
                //AQUI VA A PINTAR EN CASO QUE NO SEA GRAFICA DE ACUMULADO
                Container(
                   
                      height: 30,
                      width: 55,
                      decoration: febSeleccionado ? indicadorMesSeleccionado : null,

                      child: Tab(
                        child: Text('Feb',
                            style: febSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),
                              //MARZO
                  //SI ESTAMOS EN ACUMULADO EVALUA SI LA VARIABLE ES MENOR PARA PINTAR RASTRO
                widget.acumulado && variable > 2 ?  Container(
                      height: 30,
                      width: 55,
                  decoration: variable > 2 ? indicadorMesSeleccionadoAnterior : null,
                                  
                      child: Tab(
                        child: Text('Mar',
                            style: marSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
              // DE LO CONTRARIO VA A PINTAR DE COLOR NARANJA CUANDO SEA SELECCIONADO
                widget.acumulado ?  Container(
                   
                      height: 30,
                      width: 55,
                  decoration: marSeleccionado ? indicadorMesSeleccionado  : null,
                                  
                      child: Tab(
                        child: Text('Mar',
                            style: marSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
                //AQUI VA A PINTAR EN CASO QUE NO SEA GRAFICA DE ACUMULADO
                Container(
                   
                      height: 30,
                      width: 55,
                      decoration: marSeleccionado ? indicadorMesSeleccionado : null,

                      child: Tab(
                        child: Text('Mar',
                            style: marSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),
                  




                 //ABRIL
                  //SI ESTAMOS EN ACUMULADO EVALUA SI LA VARIABLE ES MENOR PARA PINTAR RASTRO
                widget.acumulado && variable > 3 ?  Container(
                      height: 30,
                      width: 55,
                  decoration: variable > 2 ? indicadorMesSeleccionadoAnterior : null,
                                  
                      child: Tab(
                        child: Text('Abr',
                            style: abrSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
              // DE LO CONTRARIO VA A PINTAR DE COLOR NARANJA CUANDO SEA SELECCIONADO
                widget.acumulado ?  Container(
                   
                      height: 30,
                      width: 55,
                  decoration: abrSeleccionado ? indicadorMesSeleccionado  : null,
                                  
                      child: Tab(
                        child: Text('Abr',
                            style: abrSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
                //AQUI VA A PINTAR EN CASO QUE NO SEA GRAFICA DE ACUMULADO
                Container(
                   
                      height: 30,
                      width: 55,
                      decoration: abrSeleccionado ? indicadorMesSeleccionado : null,

                      child: Tab(
                        child: Text('Abr',
                            style: abrSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),


                  
             
                 //MAYO
                  //SI ESTAMOS EN ACUMULADO EVALUA SI LA VARIABLE ES MENOR PARA PINTAR RASTRO
                widget.acumulado && variable > 4 ?  Container(
                      height: 30,
                      width: 55,
                  decoration: variable > 4 ? indicadorMesSeleccionadoAnterior : null,
                                  
                      child: Tab(
                        child: Text('May',
                            style: maySeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
              // DE LO CONTRARIO VA A PINTAR DE COLOR NARANJA CUANDO SEA SELECCIONADO
                widget.acumulado ?  Container(
                   
                      height: 30,
                      width: 55,
                  decoration: maySeleccionado ? indicadorMesSeleccionado  : null,
                                  
                      child: Tab(
                        child: Text('May',
                            style: maySeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
                //AQUI VA A PINTAR EN CASO QUE NO SEA GRAFICA DE ACUMULADO
                Container(
                   
                      height: 30,
                      width: 55,
                      decoration: maySeleccionado ? indicadorMesSeleccionado : null,

                      child: Tab(
                        child: Text('May',
                            style: maySeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),

                    //jun
                  //SI ESTAMOS EN ACUMULADO EVALUA SI LA VARIABLE ES MENOR PARA PINTAR RASTRO
                widget.acumulado && variable > 5 ?  Container(
                      height: 30,
                      width: 55,
                  decoration: variable > 5 ? indicadorMesSeleccionadoAnterior : null,
                                  
                      child: Tab(
                        child: Text('Jun',
                            style: junSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
              // DE LO CONTRARIO VA A PINTAR DE COLOR NARANJA CUANDO SEA SELECCIONADO
                widget.acumulado ?  Container(
                   
                      height: 30,
                      width: 55,
                  decoration: junSeleccionado ? indicadorMesSeleccionado  : null,
                                  
                      child: Tab(
                        child: Text('Jun',
                            style: junSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
                //AQUI VA A PINTAR EN CASO QUE NO SEA GRAFICA DE ACUMULADO
                Container(
                   
                      height: 30,
                      width: 55,
                      decoration: junSeleccionado ? indicadorMesSeleccionado : null,

                      child: Tab(
                        child: Text('Jun',
                            style: junSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),





                        //JULIO
                  //SI ESTAMOS EN ACUMULADO EVALUA SI LA VARIABLE ES MENOR PARA PINTAR RASTRO
                widget.acumulado && variable > 6 ?  Container(
                      height: 30,
                      width: 55,
                  decoration: variable > 6 ? indicadorMesSeleccionadoAnterior : null,
                                  
                      child: Tab(
                        child: Text('Jul',
                            style: julSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
              // DE LO CONTRARIO VA A PINTAR DE COLOR NARANJA CUANDO SEA SELECCIONADO
                widget.acumulado ?  Container(
                   
                      height: 30,
                      width: 55,
                  decoration: julSeleccionado ? indicadorMesSeleccionado  : null,
                                  
                      child: Tab(
                        child: Text('Jul',
                            style: julSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
                //AQUI VA A PINTAR EN CASO QUE NO SEA GRAFICA DE ACUMULADO
                Container(
                   
                      height: 30,
                      width: 55,
                      decoration: julSeleccionado ? indicadorMesSeleccionado : null,

                      child: Tab(
                        child: Text('Jul',
                            style: julSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),


            
                        //AGOSTO
                  //SI ESTAMOS EN ACUMULADO EVALUA SI LA VARIABLE ES MENOR PARA PINTAR RASTRO
                widget.acumulado && variable > 7 ?  Container(
                      height: 30,
                      width: 55,
                  decoration: variable > 7 ? indicadorMesSeleccionadoAnterior : null,
                                  
                      child: Tab(
                        child: Text('Ago',
                            style: agoSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
              // DE LO CONTRARIO VA A PINTAR DE COLOR NARANJA CUANDO SEA SELECCIONADO
                widget.acumulado ?  Container(
                   
                      height: 30,
                      width: 55,
                  decoration: agoSeleccionado ? indicadorMesSeleccionado  : null,
                                  
                      child: Tab(
                        child: Text('Ago',
                            style: agoSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
                //AQUI VA A PINTAR EN CASO QUE NO SEA GRAFICA DE ACUMULADO
                Container(
                   
                      height: 30,
                      width: 55,
                      decoration: agoSeleccionado ? indicadorMesSeleccionado : null,

                      child: Tab(
                        child: Text('Ago',
                            style: agoSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),

                      //SEPTIEMBRE
                  //SI ESTAMOS EN ACUMULADO EVALUA SI LA VARIABLE ES MENOR PARA PINTAR RASTRO
                widget.acumulado && variable > 8 ?  Container(
                      height: 30,
                      width: 55,
                  decoration: variable > 8 ? indicadorMesSeleccionadoAnterior : null,
                                  
                      child: Tab(
                        child: Text('Sep',
                            style: sepSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
              // DE LO CONTRARIO VA A PINTAR DE COLOR NARANJA CUANDO SEA SELECCIONADO
                widget.acumulado ?  Container(
                   
                      height: 30,
                      width: 55,
                  decoration: sepSeleccionado ? indicadorMesSeleccionado  : null,
                                  
                      child: Tab(
                        child: Text('Sep',
                            style: sepSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
                //AQUI VA A PINTAR EN CASO QUE NO SEA GRAFICA DE ACUMULADO
                Container(
                   
                      height: 30,
                      width: 55,
                      decoration: sepSeleccionado ? indicadorMesSeleccionado : null,

                      child: Tab(
                        child: Text('Sep',
                            style: sepSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),
                           //OCTUBRE
                  //SI ESTAMOS EN ACUMULADO EVALUA SI LA VARIABLE ES MENOR PARA PINTAR RASTRO
                widget.acumulado && variable > 9 ?  Container(
                      height: 30,
                      width: 55,
                  decoration: variable > 9 ? indicadorMesSeleccionadoAnterior : null,
                                  
                      child: Tab(
                        child: Text('Oct',
                            style: octSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
              // DE LO CONTRARIO VA A PINTAR DE COLOR NARANJA CUANDO SEA SELECCIONADO
                widget.acumulado ?  Container(
                   
                      height: 30,
                      width: 55,
                  decoration: octSeleccionado ? indicadorMesSeleccionado  : null,
                                  
                      child: Tab(
                        child: Text('Oct',
                            style: octSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
                //AQUI VA A PINTAR EN CASO QUE NO SEA GRAFICA DE ACUMULADO
                Container(
                   
                      height: 30,
                      width: 55,
                      decoration: octSeleccionado ? indicadorMesSeleccionado : null,

                      child: Tab(
                        child: Text('Oct',
                            style: octSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),
                            //NOVIEMBRE
                  //SI ESTAMOS EN ACUMULADO EVALUA SI LA VARIABLE ES MENOR PARA PINTAR RASTRO
                widget.acumulado && variable > 10 ?  Container(
                      height: 30,
                      width: 55,
                  decoration: variable > 10 ? indicadorMesSeleccionadoAnterior : null,
                                  
                      child: Tab(
                        child: Text('Nov',
                            style: novSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
              // DE LO CONTRARIO VA A PINTAR DE COLOR NARANJA CUANDO SEA SELECCIONADO
                widget.acumulado ?  Container(
                   
                      height: 30,
                      width: 55,
                  decoration: novSeleccionado ? indicadorMesSeleccionado  : null,
                                  
                      child: Tab(
                        child: Text('Nov',
                            style: novSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )) :
                //AQUI VA A PINTAR EN CASO QUE NO SEA GRAFICA DE ACUMULADO
                Container(
                   
                      height: 30,
                      width: 55,
                      decoration: novSeleccionado ? indicadorMesSeleccionado : null,

                      child: Tab(
                        child: Text('Nov',
                            style: novSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),
                  Container(
                      height: 30,
                      width: 55,
                      decoration:
                          dicSeleccionado ? indicadorMesSeleccionado : null,
                      child: Tab(
                        child: Text('Dic',
                            style: dicSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),
                ],
              ),
            ),
            Container(
              height: 200,
              child: TabBarView(
                children: [
               widget.eneContenido,
               widget.febContenido,
               widget.marContenido,
               widget.abrContenido,
               widget.mayContenido,
               widget.junContenido,
               widget.julContenido,
               widget.agoContenido,
               widget.sepContenido,
               widget.octContenido,
               widget.novContenido,
               widget.dicContenido,
                ],
              ),
            ),
          ],
        ),
      ),

    ]);

  }

  datosdeTabla(){

if(eneSeleccionado){
   mesTabla="Enero";
   mesPorcentaje=widget.enePorcentaje.toString();
   mesPorcentaje2=widget.enePorcentaje2.toString();
   mesPorcentaje3=widget.enePorcentaje3.toString();
}
if(febSeleccionado){

  widget.acumulado==true ?  mesTabla="Enero - Febrero" : mesTabla='Febrero';
   mesPorcentaje=widget.febPorcentaje.toString();
   mesPorcentaje2=widget.febPorcentaje2.toString();
   mesPorcentaje3=widget.febPorcentaje3.toString();
}
if(marSeleccionado){
   widget.acumulado==true ?  mesTabla="Enero - Marzo" : mesTabla='Marzo';
   mesPorcentaje=widget.marPorcentaje.toString();
   mesPorcentaje2=widget.marPorcentaje2.toString();
   mesPorcentaje3=widget.marPorcentaje3.toString();
}
if(abrSeleccionado){
  widget.acumulado==true ?  mesTabla="Enero - Abril" : mesTabla='Abril';
   mesPorcentaje=widget.abrPorcentaje.toString();
   mesPorcentaje2=widget.abrPorcentaje2.toString();
   mesPorcentaje3=widget.abrPorcentaje3.toString();
}
if(maySeleccionado){
    widget.acumulado==true ?  mesTabla="Enero - Mayo" : mesTabla='Mayo';
   mesPorcentaje=widget.mayPorcentaje.toString();
   mesPorcentaje2=widget.mayPorcentaje2.toString();
   mesPorcentaje3=widget.mayPorcentaje3.toString();
}
if(junSeleccionado){
   widget.acumulado==true ?  mesTabla="Enero - Junio" : mesTabla='Junio';
   mesPorcentaje=widget.junPorcentaje.toString();
   mesPorcentaje2=widget.junPorcentaje2.toString();
   mesPorcentaje3=widget.junPorcentaje3.toString();
}
if(julSeleccionado){
    widget.acumulado==true ?  mesTabla="Enero - Julio" : mesTabla='Julio';
    mesPorcentaje=widget.julPorcentaje.toString();
   mesPorcentaje2=widget.julPorcentaje2.toString();
   mesPorcentaje3=widget.julPorcentaje3.toString();
}
if(agoSeleccionado){
    widget.acumulado==true ?  mesTabla="Enero - Agosto" : mesTabla='Agosto';
   mesPorcentaje=widget.agoPorcentaje.toString();
   mesPorcentaje2=widget.agoPorcentaje2.toString();
   mesPorcentaje3=widget.agoPorcentaje3.toString();
}
if(sepSeleccionado){
    widget.acumulado==true ?  mesTabla="Enero - Septiembre" : mesTabla='Septiembre';
   mesPorcentaje=widget.sepPorcentaje.toString();
   mesPorcentaje2=widget.sepPorcentaje2.toString();
   mesPorcentaje3=widget.sepPorcentaje3.toString();
}
if(octSeleccionado){
    widget.acumulado==true ?  mesTabla="Enero - Octubre" : mesTabla='Octubre';
   mesPorcentaje=widget.octPorcentaje.toString();
   mesPorcentaje2=widget.octPorcentaje2.toString();
   mesPorcentaje3=widget.octPorcentaje3.toString();
}
if(novSeleccionado){
    widget.acumulado==true ?  mesTabla="Enero - Noviembre" : mesTabla='Noviembre';
   mesPorcentaje=widget.novPorcentaje.toString();
   mesPorcentaje2=widget.novPorcentaje2.toString();
   mesPorcentaje3=widget.novPorcentaje3.toString();
}
if(dicSeleccionado){
    widget.acumulado==true ?  mesTabla="Enero - Diciembre" : mesTabla='Diciembre';
   mesPorcentaje=widget.dicPorcentaje.toString();
   mesPorcentaje2=widget.dicPorcentaje2.toString();
   mesPorcentaje3=widget.dicPorcentaje3.toString();
}


}

}
