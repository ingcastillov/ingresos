import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class EtiquetaTituloFacturas extends StatefulWidget {
  final bool visibilidad;
  final String tituloEtiqueta;
  final double montoEtiqueta;
 final double height;
     final double width;
  final double fontTitleSize;
  final double fontMontoSize;
  final onPressed;


   EtiquetaTituloFacturas(
      {Key key,
      @required this.visibilidad,
      @required this.tituloEtiqueta,
     @required this.montoEtiqueta,
     @required this.height,
      @required this.width,
      @required this.fontTitleSize,
      @required this.fontMontoSize,
 
  this.onPressed,
   
  }): super(key: key);
    EtiquetaTituloFacturasState createState() => new EtiquetaTituloFacturasState();
}

class EtiquetaTituloFacturasState extends State<EtiquetaTituloFacturas> {

 
@override
  Widget build(BuildContext context) {
final size = MediaQuery.of(context).size;
final pattern = new NumberFormat("\u0024###,###,###.##");

 
return       Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: Container(
             height: size.height * 0.070,
             width: size.width * 0.999,
            child: ListTile(
           //   contentPadding: EdgeInsets.fromLTRB(2,8,2,8),
              leading: Text(widget.tituloEtiqueta, style: TextStyle(fontSize: widget.fontTitleSize, fontWeight: FontWeight.bold),),
              trailing:
              widget.visibilidad ?  IconButton(icon: Icon(Icons.keyboard_arrow_up , color: Colors.orange,), onPressed: widget.onPressed
    
              
              ) : IconButton(icon: Icon(Icons.keyboard_arrow_down, color: Colors.orange,), onPressed: widget.onPressed,
              ),
              title: Container(
                alignment: Alignment.centerRight,
                child: Text(pattern.format(widget.montoEtiqueta), style: widget.montoEtiqueta.isNegative ? TextStyle(fontSize: widget.fontMontoSize,color: Colors.red) : TextStyle(fontSize: widget.fontMontoSize,color: Color.fromRGBO(10, 48, 136, 1)),)),
              
            //  contentPadding: EdgeInsets.all(16),
        
            ),
          ),
        );               

  }

}
