import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class TituloColorComisiones extends StatefulWidget {
  final double montoComisiones;
  final color;



   TituloColorComisiones(
      {Key key,
      @required this.montoComisiones,
      @required this.color,
     
 
  
   
  }): super(key: key);
    TituloColorComisionesState createState() => new TituloColorComisionesState();
}

class TituloColorComisionesState extends State<TituloColorComisiones> {
final pattern = new NumberFormat("\u0024###,###,###.##");
 
@override
  Widget build(BuildContext context) {
   final size = MediaQuery.of(context).size;
    return         Container(
          height: size.height * 0.15,
          width: double.infinity,
          color: widget.color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Comisiones',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
          
              Text(pattern.format(widget.montoComisiones),style: TextStyle(color: Colors.white, fontSize: 30)),
            ],
          ),
        );

  }

}
