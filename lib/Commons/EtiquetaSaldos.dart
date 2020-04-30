import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class EtiquetaSaldo extends StatefulWidget {
  final String tituloEtiqueta;
  final double saldoEtiqueta;
  final colorEtiqueta;
  final onPressed;

   EtiquetaSaldo(
      {Key key,
      @required this.tituloEtiqueta,
     @required this.saldoEtiqueta,
     @required this.colorEtiqueta,
  this.onPressed,
   
  }): super(key: key);
    EtiquetaSaldoState createState() => new EtiquetaSaldoState();
}

class EtiquetaSaldoState extends State<EtiquetaSaldo> {

 
@override
  Widget build(BuildContext context) {
final size = MediaQuery.of(context).size;
final pattern = new NumberFormat("###,###,###.##");

 
  return Stack(
      alignment: Alignment.center,
      children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 44),
                  child: Container(
            // alignment: Alignment.center,
          height: 70,
          width: size.width * 0.85,

         

          decoration: BoxDecoration(
             
            color: widget.colorEtiqueta,   //ESTE ES EL COLOR DE LA ETIQUETA
            borderRadius: BorderRadius.circular(8.0),
        
          ),
        ),
                ),
        Container(
            alignment: Alignment.topRight,
          height: 70,
          width: size.width * 0.90,
         // padding: EdgeInsets.all(16),
          // padding: EdgeInsets.symmetric(vertical: ),
          padding: EdgeInsets.all(0),
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 6, 25, 0),
        
            title: Text(
              widget.tituloEtiqueta,
              style: TextStyle(color: Colors.black54, fontSize: 18),
            ),
               trailing: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Text("\u0024" + pattern.format(widget.saldoEtiqueta), style: TextStyle(color: Colors.blueGrey, fontSize: 18),),
               ),
          ),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black26,
                offset: Offset(4, 3),
                blurRadius: 3.0,
                spreadRadius: 3.0,
              ),
            ],
          ),
        ), 
             Container(
                  padding: EdgeInsets.all(12),    
               alignment: Alignment.centerRight,
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 25,
                      color: Colors.orange,
                    ),
                   onPressed: widget.onPressed,
                    
                    )),
        
      ],
    );

  }

}
