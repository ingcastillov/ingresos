
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ingresos/pages/Saldo%20Disponible/comisiones_page.dart';
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

  final pattern = new NumberFormat("###,###,###.##");
  bool selected = false;
  bool selected1 =false;
  bool selected2 =false;

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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ComparacionPeriodos()));
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0,16,0,16),

        child: DefaultTabController(
           initialIndex: 0,

          length: 3,
           
           
          child: Column(
            children: <Widget>[
              Container(
              
                constraints: BoxConstraints.expand(height: 75),
                child: TabBar(
                //  unselectedLabelColor: Colors.red,
              //  indicator: decored,
              //  indicatorSize: TabBarIndicatorSize.tab,
             
                onTap: (value){
                  setState(() {
                    
                  });
                if(value==0){
                  selected=true;
                }
                else{
                  selected=false;
                }

                if(value==1){
                  selected1=true;

                }else{
                  selected1=false;
                }

                if(value==2){
                  selected2=true;

                }else{
                  selected2=false;
                }
                
                },
                  
                  
                 indicatorColor: Colors.white,
                  labelColor: Colors.blue,
                 
                  isScrollable: true, 
                  tabs: [
                  Container(
                    //color: Color.fromRGBO(4, 54, 129, 1),
                    
                      alignment: Alignment.center,
                      constraints: BoxConstraints.expand(width: 110 ),
                      // color: Colors.red,
                      //width: 900,
                   
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Tab(
                            
                            child: Text("\t562,212\nTotal 2019", style: TextStyle(color: selected==true ? Colors.white : Colors.black),),
                    
                          ),
                        ],
                      ),
                      
                  decoration: selected==false ? decored2 : decored,
                      
                      ),
                  Container(
                            decoration: selected1==false ? decored2 : decored,
                      alignment: Alignment.center,
                      constraints: BoxConstraints.expand(width: 110),
                      // color: Colors.red,
                      //width: 900,
                      child: Row(
 mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                 
                          Tab(
                           

                            child: Text("\t362,212\nTotal 2018", style: TextStyle(color: selected1==true ? Colors.white : Colors.black),),
                          ),
                        ],
                      )),
                  Container(
                              decoration: selected2==false ? decored2 : decored,
                      alignment: Alignment.center,
                      constraints: BoxConstraints.expand(width: 110),
                      // color: Colors.red,
                      //width: 900,
                      child: Row(
                       // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                  
                          Tab(
                          child: Text("\t262,212\nTotal 2017", style: TextStyle(color: selected2==true ? Colors.white : Colors.black),),
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
      ),
    );
  }


  Widget _anualPage() {
    
   final size = MediaQuery.of(context).size;
  final List<int> showIndexes = const [6];
  final List<FlSpot> allSpots = [
    FlSpot(0, 1),
    FlSpot(1, 2),
    FlSpot(2, 3),
    FlSpot(3, 2),
    FlSpot(4, 5),
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

          barWidth: 8,
        //  show: true,
          belowBarData: BarAreaData(
            show: true,

            colors: [
        Color.fromRGBO(31, 71, 164, 0.3),
      

     
            ],
          ),
          dotData: FlDotData(
            
            show: false),
          colors: [
        Color.fromRGBO(31, 71, 164, 0.3),
        
        
          ],
          colorStops: [
            0.05,
          
          ]),


  


          

    ];

   // final LineChartBarData tooltipsOnBar = lineBarsData[0];



return Column(
  children: <Widget>[

       Container(
       height: 200,
         width: size.width*1,
         child: LineChart(

              LineChartData(
                
          
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
                          dotSize: 7,
                          dotColor: Colors.red
                      //   strokeWidth: 2,
                       //   getStrokeColor: (spot, percent, barData) => Colors.black,
                   
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
               // show: true,
                  leftTitles: SideTitles(
                    showTitles: false,
                  ),

                  bottomTitles: SideTitles(
                    reservedSize: 22,
                   // reservedSize: 80,
                   
                      showTitles: true,
                     // reservedSize: 100,
                      interval: 2.0,
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
                        color: Colors.red,
                        fontFamily: 'Digital',
                        fontSize: 08,
                      )),
                ),
                 axisTitleData: FlAxisTitleData(
    /*               rightTitle: AxisTitle(showTitle: true, titleText: 'count'),
                  leftTitle: AxisTitle(showTitle: true, titleText: 'count'),
                  topTitle:
                      AxisTitle(showTitle: true, titleText: 'Wall clock', textAlign: TextAlign.left), */
                      bottomTitle:   AxisTitle(showTitle: true, titleText: 'Wall clock', textAlign: TextAlign.left),
                ), 
                        gridData: FlGridData(show: true,
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

       Container(child:Text('\n'),),

           Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Text('Detalles de Facturas en Febrero', style: TextStyle(fontSize: 17),),),
    ),

    
     Container(
      height: size.height * 0.075,
      width: size.width * 0.85,

      // padding: EdgeInsets.symmetric(vertical: ),
    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: ListTile(
        contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
   
        title: Text(
          '08/02/2019' + '\t\t\t\t\t\t\t\t\t\t\t\t\t\ \t\t\t\t \t\t\t\t' "\u0024" + pattern.format(comisiones),
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
          '15/02/2019' + '\t\t\t\t\t\t\t\t\t\t\t\t\t\ \t\t\t\t \t\t\t\t' "\u0024" + pattern.format(comisiones),
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
          '21/02/2019' + '\t\t\t\t\t\t\t\t\t\t\t\t\t\ \t\t\t\t \t\t\t\t' "\u0024" + pattern.format(comisiones),
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


       
       ]
       ); 
      

  

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



return Column(
  children: <Widget>[

       Container(
       height: 200,
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

       Container(child:Text('\n'),),

           Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Text('Detalles de Facturas en Febrero', style: TextStyle(fontSize: 17),),),
    ),

    
     Container(
      height: size.height * 0.075,
      width: size.width * 0.85,

      // padding: EdgeInsets.symmetric(vertical: ),
    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: ListTile(
        contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
   
        title: Text(
          '08/02/2019' + '\t\t\t\t\t\t\t\t\t\t\t\t\t\ \t\t\t\t \t\t\t\t' "\u0024" + pattern.format(comisiones),
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
          '15/02/2019' + '\t\t\t\t\t\t\t\t\t\t\t\t\t\ \t\t\t\t \t\t\t\t' "\u0024" + pattern.format(comisiones),
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
          '21/02/2019' + '\t\t\t\t\t\t\t\t\t\t\t\t\t\ \t\t\t\t \t\t\t\t' "\u0024" + pattern.format(comisiones),
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


       
       ]
       ); 
       
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



return Column(
  children: <Widget>[

       Container(
       height: 200,
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

       Container(child:Text('\n'),),

           Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Text('Detalles de Facturas en Febrero', style: TextStyle(fontSize: 17),),),
    ),

    
     Container(
      height: size.height * 0.075,
      width: size.width * 0.85,

      // padding: EdgeInsets.symmetric(vertical: ),
    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: ListTile(
        contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
   
        title: Text(
          '08/02/2019' + '\t\t\t\t\t\t\t\t\t\t\t\t\t\ \t\t\t\t \t\t\t\t' "\u0024" + pattern.format(comisiones),
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
          '15/02/2019' + '\t\t\t\t\t\t\t\t\t\t\t\t\t\ \t\t\t\t \t\t\t\t' "\u0024" + pattern.format(comisiones),
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
          '21/02/2019' + '\t\t\t\t\t\t\t\t\t\t\t\t\t\ \t\t\t\t \t\t\t\t' "\u0024" + pattern.format(comisiones),
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


       
       ]
       ); 
       
       }


       }



  
 
