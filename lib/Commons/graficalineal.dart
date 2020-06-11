import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class GraficaLineal extends StatefulWidget {

  

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


  final onPressed;

   GraficaLineal(
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
 
     this.onPressed,
   
  }): super(key: key);
    GraficaLinealState createState() => new GraficaLinealState();
}

class GraficaLinealState extends State<GraficaLineal> {
  String mesTabla;
  String mesCantidad;
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

    final lineBarsData = [
      LineChartBarData(
   
        shadow: Shadow(
          blurRadius: 0.1,
          color: Color.fromRGBO(31, 71, 164, 1),
          offset: Offset(0, 0)
        ),
        //curveSmoothness: 2.0,

          showingIndicators: showIndexes  ,
          
          spots: allSpots,
          isCurved: true,
          barWidth: 3,
    
           
           show: true,
          belowBarData: BarAreaData(
       
 
   
            show: true,
            colors: [
          
                  Color.fromRGBO(31, 71, 164, 0.3),
                  Color.fromRGBO(255, 255, 255, 1),
               
            ],
            gradientColorStops:  [
            50
            ]
          ),
          dotData: FlDotData(show: false),

          colors: [
              
               Color.fromRGBO(31, 71, 164, 0.3),
               
       
         
          ],
       
          ),
    ];
     
     //ESTA VARIABLE ES NECESARIA PARA LOS CUADROS DE TEXTO
    final LineChartBarData tooltipsOnBar = lineBarsData[0];
    return Column(children: <Widget>[
   
      Container(
        height: 150,
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
                          getStrokeColor: (spot, percent, barData) => azulMarino,
                  ),
                );
              }).toList();
            },
            touchTooltipData: LineTouchTooltipData(
              
              maxContentWidth: 100,
              fitInsideHorizontally: true,
              fitInsideVertically: true,
              tooltipBgColor: Color.fromRGBO(203, 218, 246, 1),
              tooltipRoundedRadius: 8,
              getTooltipItems: (List<LineBarSpot> lineBarsSpot) {

 
                return lineBarsSpot.map((lineBarSpot) {
                   datosdeTabla();
                   return LineTooltipItem(
                    
                  mesTabla+'\n'+mesCantidad,
     
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
              checkToShowHorizontalLine: (value) => value % widget.gradle == 0,
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
              child: TabBar(
                indicatorColor: Colors.transparent,
                // labelColor: Colors.orange,
                labelPadding: EdgeInsets.symmetric(horizontal: 8),
                onTap: (value) {
                  setState(() {
                    
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
                  });
                },
                isScrollable: true,
                tabs: [
                  Container(
                      height: 30,
                      width: 50,
                      decoration:
                          eneSeleccionado ? indicadorMesSeleccionado : null,
                      child: Tab(
                        child: Text('Ene',
                            style: eneSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),
                  Container(
                      height: 30,
                      width: 50,
                      decoration:
                          febSeleccionado ? indicadorMesSeleccionado : null,
                      child: Tab(
                        child: Text('Feb',
                            style: febSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),
                  Container(
                      height: 30,
                      width: 50,
                      decoration:
                          marSeleccionado ? indicadorMesSeleccionado : null,
                      child: Tab(
                        child: Text('Mar',
                            style: marSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),
                  Container(
                      height: 30,
                      width: 50,
                      decoration:
                          abrSeleccionado ? indicadorMesSeleccionado : null,
                      child: Tab(
                        child: Text('Abr',
                            style: abrSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),
                  Container(
                      height: 30,
                      width: 50,
                      decoration:
                          maySeleccionado ? indicadorMesSeleccionado : null,
                      child: Tab(
                        child: Text('May',
                            style: maySeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),
                  Container(
                      height: 30,
                      width: 50,
                      decoration:
                          junSeleccionado ? indicadorMesSeleccionado : null,
                      child: Tab(
                        child: Text('Jun',
                            style: junSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),
                  Container(
                      height: 30,
                      width: 50,
                      decoration:
                          julSeleccionado ? indicadorMesSeleccionado : null,
                      child: Tab(
                        child: Text('Jul',
                            style: julSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),
                  Container(
                      height: 30,
                      width: 50,
                      decoration:
                          agoSeleccionado ? indicadorMesSeleccionado : null,
                      child: Tab(
                        child: Text('Ago',
                            style: agoSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),
                  Container(
                      height: 30,
                      width: 50,
                      decoration:
                          sepSeleccionado ? indicadorMesSeleccionado : null,
                      child: Tab(
                        child: Text('Sep',
                            style: sepSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),
                  Container(
                      height: 30,
                      width: 50,
                      decoration:
                          octSeleccionado ? indicadorMesSeleccionado : null,
                      child: Tab(
                        child: Text('Oct',
                            style: octSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),
                  Container(
                      height: 30,
                      width: 50,
                      decoration:
                          novSeleccionado ? indicadorMesSeleccionado : null,
                      child: Tab(
                        child: Text('Nov',
                            style: novSeleccionado
                                ? estiloLetraBlanca
                                : estiloTitulo),
                      )),
                  Container(
                      height: 30,
                      width: 50,
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

if(eneSeleccionado){ mesTabla="Enero";
mesCantidad= "\u0024" +pattern.format(widget.eneTotal);
}
if(febSeleccionado){mesTabla="Febrero";
 mesCantidad= "\u0024" +pattern.format(widget.febTotal);
}
if(marSeleccionado){mesTabla="Marzo";
 mesCantidad= "\u0024" +pattern.format(widget.marTotal);
}
if(abrSeleccionado){mesTabla="Abril";
 mesCantidad= "\u0024" +pattern.format(widget.abrTotal);
}
if(maySeleccionado){mesTabla="Mayo";
 mesCantidad= "\u0024" +pattern.format(widget.mayTotal);
}
if(junSeleccionado){mesTabla="Junio";
 mesCantidad= "\u0024" +pattern.format(widget.junTotal);
}
if(julSeleccionado){mesTabla="Julio";
 mesCantidad= "\u0024" +pattern.format(widget.julTotal);
}
if(agoSeleccionado){mesTabla="Agosto";
 mesCantidad= "\u0024" +pattern.format(widget.agoTotal);
}
if(sepSeleccionado){mesTabla="Septiembre";
 mesCantidad= "\u0024" +pattern.format(widget.sepTotal);
}
if(octSeleccionado){mesTabla="Octubre";
 mesCantidad= "\u0024" +pattern.format(widget.octTotal);
}
if(novSeleccionado){mesTabla="Noviembre";
 mesCantidad= "\u0024" +pattern.format(widget.novTotal);
}
if(dicSeleccionado){mesTabla="Diciembre";
 mesCantidad= "\u0024" +pattern.format(widget.dicTotal);
}


}

}
