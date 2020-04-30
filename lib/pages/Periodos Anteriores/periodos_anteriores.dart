import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ingresos/pages/Periodos%20Anteriores/saldo_facturado.dart';
import 'package:ingresos/pages/Saldo%20Disponible/comisiones_page.dart';
import 'package:ingresos/pages/Ultimo%20Deposito/ultimo_periodo_facturado.dart';
import 'package:intl/intl.dart';
import 'comparacion_periodos.dart';
import 'dart:math';

class PeriodosAnteriores extends StatefulWidget {
  final random = Random();

  @override
  _PeriodosAnteriores createState() => _PeriodosAnteriores();
}

class _PeriodosAnteriores extends State<PeriodosAnteriores> {
  double comisiones = 320000;

  double bonos = 800000;

  double otrosmovimientos = 222000;

  double impuestos = 1000000;
 
  final azulMarino =  Color.fromRGBO(4, 54, 129, 1);

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
  bool selected = false;
  bool selected1 = false;
  bool selected2 = false;

  double saldoDisponible = 84692.87;

  var decored = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color.fromRGBO(4, 54, 129, 1),
    border: Border.all(
      color: Colors.white, //                   <--- border color
      width: 5.0,
    ),
  );

  var decored2 = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color.fromRGBO(168, 168, 168, 1),
    border: Border.all(
      color: Colors.white, //                   <--- border color
      width: 5.0,
    ),
  );

//VARIABLES PARA LOS MESES
  var indicadorMesSeleccionado = BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    color: Colors.orange,
  );

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

  String fechaPrueba = '08/03/2019';

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
      // backgroundColor: Colors.white,
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
          'Periodos Anteriores',
          style: TextStyle(color: Colors.blueGrey),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.multiline_chart,
                color: Colors.orange,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ComparacionPeriodos()));
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
        child: DefaultTabController(
          initialIndex: 0,
          length: 3,
          child: Column(
            children: <Widget>[
              Container(
                //  padding: EdgeInsets.all(16),
                //     width: 300,

                constraints: BoxConstraints.expand(height: 100),
                child: TabBar(

                    //  unselectedLabelColor: Colors.red,
                    //  indicator: decored,
                    //  indicatorSize: TabBarIndicatorSize.tab,
                    labelPadding: EdgeInsets.symmetric(vertical: 10),
                    onTap: (value) {
                      setState(() {});
                      if (value == 0) {
                        selected = true;
                      } else {
                        selected = false;
                      }

                      if (value == 1) {
                        selected1 = true;
                      } else {
                        selected1 = false;
                      }

                      if (value == 2) {
                        selected2 = true;
                      } else {
                        selected2 = false;
                      }
                    },
                    indicatorColor: Colors.white,
                    labelColor: Colors.blue,

                    //  isScrollable: true,

                    tabs: [
                      Container(
                        //color: Color.fromRGBO(4, 54, 129, 1),

                        alignment: Alignment.center,
                        constraints: BoxConstraints.expand(width: 130),

                        // color: Colors.red,
                        //  width: 200,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Tab(
                              child: Text(
                                "\t562,212\nTotal 2019",
                                style: TextStyle(
                                    color: selected == true
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ],
                        ),

                        decoration: selected == false ? decored2 : decored,
                      ),
                      Container(
                          decoration: selected1 == false ? decored2 : decored,
                          alignment: Alignment.center,
                          constraints: BoxConstraints.expand(width: 130),
                          // color: Colors.red,
                          //width: 900,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Tab(
                                child: Text(
                                  "\t362,212\nTotal 2018",
                                  style: TextStyle(
                                      color: selected1 == true
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ),
                            ],
                          )),
                      Container(
                          decoration: selected2 == false ? decored2 : decored,
                          alignment: Alignment.center,
                          constraints: BoxConstraints.expand(width: 130),
                          // color: Colors.red,
                          //width: 900,
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Tab(
                                child: Text(
                                  "\t262,212\nTotal 2017",
                                  style: TextStyle(
                                      color: selected2 == true
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ),
                            ],
                          )),
                    ]),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(children: [
                    _anualPage(),
                    _anualPage2(),
                    _anualPage3(),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _anualPage() {
    final size = MediaQuery.of(context).size;
    final List<int> showIndexes = [
      eneSeleccionado ? 1 : 0,
      febSeleccionado ? 2 : 0,
      marSeleccionado ? 3 : 0,
      abrSeleccionado ? 4 : 0,
      maySeleccionado ? 5 : 0,
      junSeleccionado ? 6 : 0,
      julSeleccionado ? 7 : 0,
      agoSeleccionado ? 8 : 0,
      sepSeleccionado ? 9 : 0,
      octSeleccionado ? 10 : 0,
      novSeleccionado ? 11 : 0,
      dicSeleccionado ? 12 : 0,
    ];
    final List<FlSpot> allSpots = [
      FlSpot(0, 0),
      FlSpot(1, 2),
      FlSpot(2, 3),
      FlSpot(3, 2),
      FlSpot(4, 5),
      FlSpot(5, 1),
      FlSpot(6, 1),
      FlSpot(7, 1),
      FlSpot(8, 1),
      FlSpot(9, 1),
      FlSpot(10, 1),
      FlSpot(11, 1),
      FlSpot(12, 9),
      FlSpot(13, 0),
    ];

    final lineBarsData = [
      LineChartBarData(
          showingIndicators: showIndexes,
          spots: allSpots,
          isCurved: true,
          barWidth: 4,
          //  show: true,
          belowBarData: BarAreaData(
            show: true,
            colors: [
              Color.fromRGBO(31, 71, 164, 0.3),
            ],
          ),
          dotData: FlDotData(show: false),
          colors: [
            Color.fromRGBO(31, 71, 164, 0.3),
          ],
          colorStops: [
            0.05,
          ]),
    ];

    // final LineChartBarData tooltipsOnBar = lineBarsData[0];

    return Column(children: <Widget>[
      Container(
        height: 150,
        width: size.width * 1,
        child: LineChart(
          LineChartData(
            lineTouchData: LineTouchData(
              enabled: false,
              getTouchedSpotIndicator:
                  (LineChartBarData barData, List<int> spotIndexes) {
                return spotIndexes.map((index) {
                  return TouchedSpotIndicatorData(
                    FlLine(
                     // dashArray: [5,90],
                        color: Color.fromRGBO(8, 63, 164, 0.1), strokeWidth: 1),
                    FlDotData(

                      show: true,
                      dotSize: 8,
                      dotColor: Color.fromRGBO(8, 63, 164, 1),
                    ),
                  );
                }).toList();
              },
              touchTooltipData: LineTouchTooltipData(
                tooltipBgColor: Colors.orange,
                tooltipRoundedRadius: 8,
                getTooltipItems: (List<LineBarSpot> lineBarsSpot) {
                  return lineBarsSpot.map((lineBarSpot) {
                    return LineTooltipItem(
                      lineBarSpot.y.toString(),
                      const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    );
                  }).toList();
                },
              ),
            ),
            lineBarsData: lineBarsData,
            minY: 0,
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
                      case 0:
                        return '';
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
                      case 13:
                        return '';
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
              checkToShowHorizontalLine: (value) => value % 3 == 0,
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
                    } else {
                      eneSeleccionado = false;
                    }
                    if (value == 1) {
                      febSeleccionado = true;
                    } else {
                      febSeleccionado = false;
                    }
                    if (value == 2) {
                      marSeleccionado = true;
                    } else {
                      marSeleccionado = false;
                    }
                    if (value == 3) {
                      abrSeleccionado = true;
                    } else {
                      abrSeleccionado = false;
                    }
                    if (value == 4) {
                      maySeleccionado = true;
                    } else {
                      maySeleccionado = false;
                    }
                    if (value == 5) {
                      junSeleccionado = true;
                    } else {
                      junSeleccionado = false;
                    }
                    if (value == 6) {
                      julSeleccionado = true;
                    } else {
                      julSeleccionado = false;
                    }
                    if (value == 7) {
                      agoSeleccionado = true;
                    } else {
                      agoSeleccionado = false;
                    }
                    if (value == 8) {
                      sepSeleccionado = true;
                    } else {
                      sepSeleccionado = false;
                    }
                    if (value == 9) {
                      octSeleccionado = true;
                    } else {
                      octSeleccionado = false;
                    }
                    if (value == 10) {
                      novSeleccionado = true;
                    } else {
                      novSeleccionado = false;
                    }
                    if (value == 11) {
                      dicSeleccionado = true;
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
                mesEnero(),
                mesFebrero(),
                mesMarzo(),
                mesAbril(),
                mesMayo(),
                mesJunio(),
                mesJulio(),
                mesAgosto(),
                mesSeptiembre(),
                mesOctubre(),
                mesNoviembre(),
                mesDiciembre(),
                ],
              ),
            ),
          ],
        ),
      ),

    ]);
  }

  Widget _anualPage2() {
    final size = MediaQuery.of(context).size;
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
    ];

    // final LineChartBarData tooltipsOnBar = lineBarsData[0];

    return Column(children: <Widget>[
      Container(
        height: 200,
        width: size.width * 1,
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
              getTouchedSpotIndicator:
                  (LineChartBarData barData, List<int> spotIndexes) {
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
                      const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
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
            gridData: FlGridData(
              show: true,
              drawHorizontalLine: true,
              checkToShowHorizontalLine: (value) => value % 3 == 0,
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
      Container(
        child: Text('\n'),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Detalles de Facturas en Febrero',
            style: TextStyle(fontSize: 17),
          ),
        ),
      ),
      Container(
        height: size.height * 0.075,
        width: size.width * 0.85,

        // padding: EdgeInsets.symmetric(vertical: ),
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          title: Text(
            '08/02/2019' +
                '\t\t\t\t\t\t\t\t\t\t\t\t\t\ \t\t\t\t \t\t\t\t' "\u0024" +
                pattern.format(comisiones),
            style: TextStyle(color: Colors.blueGrey, fontSize: 17),
          ),
          trailing: Container(
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 25,
                    color: Colors.orange,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ComisionesPage()));
                  })),
        ),

        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.circular(12.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              offset: Offset(1, 3),
              blurRadius: 1.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
      ),
      Container(
        height: size.height * 0.075,
        width: size.width * 0.85,

        // padding: EdgeInsets.symmetric(vertical: ),
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          title: Text(
            '15/02/2019' +
                '\t\t\t\t\t\t\t\t\t\t\t\t\t\ \t\t\t\t \t\t\t\t' "\u0024" +
                pattern.format(comisiones),
            style: TextStyle(color: Colors.blueGrey, fontSize: 17),
          ),
          trailing: Container(
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 25,
                    color: Colors.orange,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ComisionesPage()));
                  })),
        ),

        decoration: BoxDecoration(
          color: Colors.white,
          //   borderRadius: BorderRadius.circular(12.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              offset: Offset(1, 3),
              blurRadius: 1.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
      ),
      Container(
        height: size.height * 0.075,
        width: size.width * 0.85,

        // padding: EdgeInsets.symmetric(vertical: ),
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          title: Text(
            '21/02/2019' +
                '\t\t\t\t\t\t\t\t\t\t\t\t\t\ \t\t\t\t \t\t\t\t' "\u0024" +
                pattern.format(comisiones),
            style: TextStyle(color: Colors.blueGrey, fontSize: 17),
          ),
          trailing: Container(
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 25,
                    color: Colors.orange,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ComisionesPage()));
                  })),
        ),

        decoration: BoxDecoration(
          color: Colors.white,
          //    borderRadius: BorderRadius.circular(12.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              offset: Offset(1, 3),
              blurRadius: 1.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
      ),
    ]);
  }

  Widget _anualPage3() {
    final size = MediaQuery.of(context).size;
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
    ];

    // final LineChartBarData tooltipsOnBar = lineBarsData[0];

    return Column(children: <Widget>[
      Container(
        height: 200,
        width: size.width * 1,
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
              getTouchedSpotIndicator:
                  (LineChartBarData barData, List<int> spotIndexes) {
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
                      const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
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
            gridData: FlGridData(
              show: true,
              drawHorizontalLine: true,
              checkToShowHorizontalLine: (value) => value % 3 == 0,
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
      Container(
        child: Text('\n'),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Detalles de Facturas en Febrero',
            style: TextStyle(fontSize: 17),
          ),
        ),
      ),
      Container(
        height: size.height * 0.075,
        width: size.width * 0.85,

        // padding: EdgeInsets.symmetric(vertical: ),
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          title: Text(
            '08/02/2019' +
                '\t\t\t\t\t\t\t\t\t\t\t\t\t\ \t\t\t\t \t\t\t\t' "\u0024" +
                pattern.format(comisiones),
            style: TextStyle(color: Colors.blueGrey, fontSize: 17),
          ),
          trailing: Container(
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 25,
                    color: Colors.orange,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ComisionesPage()));
                  })),
        ),

        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.circular(12.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              offset: Offset(1, 3),
              blurRadius: 1.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
      ),
      Container(
        height: size.height * 0.075,
        width: size.width * 0.85,

        // padding: EdgeInsets.symmetric(vertical: ),
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          title: Text(
            '15/02/2019' +
                '\t\t\t\t\t\t\t\t\t\t\t\t\t\ \t\t\t\t \t\t\t\t' "\u0024" +
                pattern.format(comisiones),
            style: TextStyle(color: Colors.blueGrey, fontSize: 17),
          ),
          trailing: Container(
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 25,
                    color: Colors.orange,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ComisionesPage()));
                  })),
        ),

        decoration: BoxDecoration(
          color: Colors.white,
          //   borderRadius: BorderRadius.circular(12.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              offset: Offset(1, 3),
              blurRadius: 1.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
      ),
      Container(
        height: size.height * 0.075,
        width: size.width * 0.85,

        // padding: EdgeInsets.symmetric(vertical: ),
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          title: Text(
            '21/02/2019' +
                '\t\t\t\t\t\t\t\t\t\t\t\t\t\ \t\t\t\t \t\t\t\t' "\u0024" +
                pattern.format(comisiones),
            style: TextStyle(color: Colors.blueGrey, fontSize: 17),
          ),
          trailing: Container(
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 25,
                    color: Colors.orange,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ComisionesPage()));
                  })),
        ),

        decoration: BoxDecoration(
          color: Colors.white,
          //    borderRadius: BorderRadius.circular(12.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              offset: Offset(1, 3),
              blurRadius: 1.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
      ),
    ]);
  }

Widget mesEnero(){
 final size = MediaQuery.of(context).size;
  return  ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Detalles de Facturas en Enero',
                            style: TextStyle(fontSize: 17, color: azulMarino),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          // alignment: Alignment.topRight,
                          height: size.height * 0.088,
                          width: size.width * 0.90,
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // borderRadius: BorderRadius.circular(12.0),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1, 3),
                                blurRadius: 1.0,
                                spreadRadius: 1.0,
                              ),
                            ],
                          ),
                          child: ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  fechaPrueba,
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 18),
                                ),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              subtitle: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(65, 16, 5, 16),
                                child: Text(
                                  "\u0024" + pattern.format(comisiones),
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 18),
                                ),
                              ),
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.orange,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SaldoFacturado(fechaPrueba)));
                                  })),
                        ),
                      ),
                      
                    ],
                  );
}

Widget mesFebrero(){
 final size = MediaQuery.of(context).size;
  return  ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Detalles de Facturas en Febrero',
                            style: TextStyle(fontSize: 17, color: azulMarino),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          // alignment: Alignment.topRight,
                          height: size.height * 0.088,
                          width: size.width * 0.90,
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // borderRadius: BorderRadius.circular(12.0),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1, 3),
                                blurRadius: 1.0,
                                spreadRadius: 1.0,
                              ),
                            ],
                          ),
                          child: ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  fechaPrueba,
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 18),
                                ),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              subtitle: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(65, 16, 5, 16),
                                child: Text(
                                  "\u0024" + pattern.format(comisiones),
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 18),
                                ),
                              ),
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.orange,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UltimoDeposito()));
                                  })),
                        ),
                      ),
                      
                    ],
                  );
}

Widget mesMarzo(){
 final size = MediaQuery.of(context).size;
  return  ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Detalles de Facturas en Marzo',
                            style: TextStyle(fontSize: 17, color: azulMarino),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          // alignment: Alignment.topRight,
                          height: size.height * 0.088,
                          width: size.width * 0.90,
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // borderRadius: BorderRadius.circular(12.0),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1, 3),
                                blurRadius: 1.0,
                                spreadRadius: 1.0,
                              ),
                            ],
                          ),
                          child: ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  fechaPrueba,
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 18),
                                ),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              subtitle: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(65, 16, 5, 16),
                                child: Text(
                                  "\u0024" + pattern.format(comisiones),
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 18),
                                ),
                              ),
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.orange,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UltimoDeposito()));
                                  })),
                        ),
                      ),
                      
                    ],
                  );
}

Widget mesAbril(){
 final size = MediaQuery.of(context).size;
  return  ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Detalles de Facturas en Abril',
                            style: TextStyle(fontSize: 17, color: azulMarino),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          // alignment: Alignment.topRight,
                          height: size.height * 0.088,
                          width: size.width * 0.90,
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // borderRadius: BorderRadius.circular(12.0),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1, 3),
                                blurRadius: 1.0,
                                spreadRadius: 1.0,
                              ),
                            ],
                          ),
                          child: ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  fechaPrueba,
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 18),
                                ),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              subtitle: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(65, 16, 5, 16),
                                child: Text(
                                  "\u0024" + pattern.format(comisiones),
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 18),
                                ),
                              ),
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.orange,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UltimoDeposito()));
                                  })),
                        ),
                      ),
                      
                    ],
                  );
}

Widget mesMayo(){
 final size = MediaQuery.of(context).size;
  return  ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Detalles de Facturas en Mayo',
                            style: TextStyle(fontSize: 17, color: azulMarino),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          // alignment: Alignment.topRight,
                          height: size.height * 0.088,
                          width: size.width * 0.90,
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // borderRadius: BorderRadius.circular(12.0),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1, 3),
                                blurRadius: 1.0,
                                spreadRadius: 1.0,
                              ),
                            ],
                          ),
                          child: ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                 fechaPrueba,
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 18),
                                ),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              subtitle: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(65, 16, 5, 16),
                                child: Text(
                                  "\u0024" + pattern.format(comisiones),
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 18),
                                ),
                              ),
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.orange,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UltimoDeposito()));
                                  })),
                        ),
                      ),
                      
                    ],
                  );
}

Widget mesJunio(){
 final size = MediaQuery.of(context).size;
  return  ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Detalles de Facturas en Junio',
                            style: TextStyle(fontSize: 17, color: azulMarino),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          // alignment: Alignment.topRight,
                          height: size.height * 0.088,
                          width: size.width * 0.90,
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // borderRadius: BorderRadius.circular(12.0),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1, 3),
                                blurRadius: 1.0,
                                spreadRadius: 1.0,
                              ),
                            ],
                          ),
                          child: ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 18),
                                ),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              subtitle: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(65, 16, 5, 16),
                                child: Text(
                                  "\u0024" + pattern.format(comisiones),
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 18),
                                ),
                              ),
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.orange,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UltimoDeposito()));
                                  })),
                        ),
                      ),
                      
                    ],
                  );
}

Widget mesJulio(){
 final size = MediaQuery.of(context).size;
  return  ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Detalles de Facturas en Julio',
                            style: TextStyle(fontSize: 17, color: azulMarino),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          // alignment: Alignment.topRight,
                          height: size.height * 0.088,
                          width: size.width * 0.90,
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // borderRadius: BorderRadius.circular(12.0),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1, 3),
                                blurRadius: 1.0,
                                spreadRadius: 1.0,
                              ),
                            ],
                          ),
                          child: ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  fechaPrueba,
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 18),
                                ),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              subtitle: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(65, 16, 5, 16),
                                child: Text(
                                  "\u0024" + pattern.format(comisiones),
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 18),
                                ),
                              ),
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.orange,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UltimoDeposito()));
                                  })),
                        ),
                      ),
                      
                    ],
                  );
}

Widget mesAgosto(){
 final size = MediaQuery.of(context).size;
  return  ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Detalles de Facturas en Agosto',
                            style: TextStyle(fontSize: 17, color: azulMarino),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          // alignment: Alignment.topRight,
                          height: size.height * 0.088,
                          width: size.width * 0.90,
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // borderRadius: BorderRadius.circular(12.0),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1, 3),
                                blurRadius: 1.0,
                                spreadRadius: 1.0,
                              ),
                            ],
                          ),
                          child: ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  fechaPrueba,
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 18),
                                ),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              subtitle: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(65, 16, 5, 16),
                                child: Text(
                                  "\u0024" + pattern.format(comisiones),
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 18),
                                ),
                              ),
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.orange,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UltimoDeposito()));
                                  })),
                        ),
                      ),
                      
                    ],
                  );
}

Widget mesSeptiembre(){
 final size = MediaQuery.of(context).size;
  return  ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Detalles de Facturas en Septiembre',
                            style: TextStyle(fontSize: 17, color: azulMarino),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          // alignment: Alignment.topRight,
                          height: size.height * 0.088,
                          width: size.width * 0.90,
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // borderRadius: BorderRadius.circular(12.0),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1, 3),
                                blurRadius: 1.0,
                                spreadRadius: 1.0,
                              ),
                            ],
                          ),
                          child: ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                 fechaPrueba,
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 18),
                                ),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              subtitle: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(65, 16, 5, 16),
                                child: Text(
                                  "\u0024" + pattern.format(comisiones),
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 18),
                                ),
                              ),
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.orange,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UltimoDeposito()));
                                  })),
                        ),
                      ),
                      
                    ],
                  );
}

Widget mesOctubre(){
 final size = MediaQuery.of(context).size;
  return  ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Detalles de Facturas en Octubre',
                            style: TextStyle(fontSize: 17, color: azulMarino),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          // alignment: Alignment.topRight,
                          height: size.height * 0.088,
                          width: size.width * 0.90,
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // borderRadius: BorderRadius.circular(12.0),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1, 3),
                                blurRadius: 1.0,
                                spreadRadius: 1.0,
                              ),
                            ],
                          ),
                          child: ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  fechaPrueba,
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 18),
                                ),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              subtitle: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(65, 16, 5, 16),
                                child: Text(
                                  "\u0024" + pattern.format(comisiones),
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 18),
                                ),
                              ),
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.orange,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UltimoDeposito()));
                                  })),
                        ),
                      ),
                      
                    ],
                  );
}

Widget mesNoviembre(){
 final size = MediaQuery.of(context).size;
  return  ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Detalles de Facturas en Noviembre',
                            style: TextStyle(fontSize: 17, color: azulMarino),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          // alignment: Alignment.topRight,
                          height: size.height * 0.088,
                          width: size.width * 0.90,
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // borderRadius: BorderRadius.circular(12.0),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1, 3),
                                blurRadius: 1.0,
                                spreadRadius: 1.0,
                              ),
                            ],
                          ),
                          child: ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  fechaPrueba,
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 18),
                                ),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              subtitle: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(65, 16, 5, 16),
                                child: Text(
                                  "\u0024" + pattern.format(comisiones),
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 18),
                                ),
                              ),
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.orange,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UltimoDeposito()));
                                  })),
                        ),
                      ),
                      
                    ],
                  );
}

Widget mesDiciembre(){
 final size = MediaQuery.of(context).size;
  return  ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Detalles de Facturas en Diciembre',
                            style: TextStyle(fontSize: 17, color: azulMarino),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          // alignment: Alignment.topRight,
                          height: size.height * 0.088,
                          width: size.width * 0.90,
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // borderRadius: BorderRadius.circular(12.0),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1, 3),
                                blurRadius: 1.0,
                                spreadRadius: 1.0,
                              ),
                            ],
                          ),
                          child: ListTile(
                              leading: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  fechaPrueba,
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 18),
                                ),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              subtitle: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(65, 16, 5, 16),
                                child: Text(
                                  "\u0024" + pattern.format(comisiones),
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 18),
                                ),
                              ),
                              trailing: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.orange,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UltimoDeposito()));
                                  })),
                        ),
                      ),
                      
                    ],
                  );
}
}
