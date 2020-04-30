import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:intl/intl.dart';



class GraficaCircular extends StatefulWidget {
  final String tituloGrafica;
  final double saldoDisponible;
  final double comisionesG;
  final double bonosG;
  final double otrosmovimientosG;
  final String fecha;
   final String fechaFinal;


 

   GraficaCircular(
      {Key key,
      @required this.tituloGrafica,
      @required this.saldoDisponible,
      @required this.comisionesG,
      @required this.bonosG,
      @required this.otrosmovimientosG,
      @required this.fecha,
      this.fechaFinal,
  
   
  }): super(key: key);
    GraficaCircularState createState() => new GraficaCircularState();
}

class GraficaCircularState extends State<GraficaCircular> {
  final GlobalKey<AnimatedCircularChartState> _chartKey =
      new GlobalKey<AnimatedCircularChartState>();
      final pattern = new NumberFormat("###,###,###.##");
 
@override
  Widget build(BuildContext context) {
    List<CircularStackEntry> data = <CircularStackEntry>[
      new CircularStackEntry(
        <CircularSegmentEntry>[
          new CircularSegmentEntry(widget.comisionesG, Color.fromRGBO(8, 63, 164, 1), rankKey: 'Q1'),
          new CircularSegmentEntry(widget.bonosG, Colors.orange, rankKey: 'Q2'),
          new CircularSegmentEntry(widget.otrosmovimientosG, Colors.red,
              rankKey: 'Q3'),
          // new CircularSegmentEntry(impuestos, Colors.white, rankKey: 'Q4'),
        ],
        rankKey: 'Quarterly Profits',
      ),
    ];

    return Center(
      child: Container(
        // alignment: AlignmentDirectional.bottomCenter,
        width: 260.0,
        height: 260.0,
        // padding: EdgeInsets.only(top),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(300),
          color: Color.fromRGBO(255, 255, 255, 1),
        ),

        child: Stack(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      widget.tituloGrafica,
                      style: TextStyle(color: Colors.blue[900], fontSize: 18),
                    ),
                    Text(
                      "\u0024" + pattern.format(widget.saldoDisponible),
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: Text(''),
                    ),
               widget.fechaFinal !=null  ? Text('Del '+widget.fecha+ ' al\n    '+widget.fechaFinal,
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ) : Text(widget.fecha,
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ],
                )),
            Container(
              child: AnimatedCircularChart(
                key: _chartKey,
                size: Size(290.0, 290.0),
                initialChartData: data,
                chartType: CircularChartType.Radial,
              ),
            ),
          ],
        ),
      ),
    );

  }

}
