import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class EtiquetaInformativa extends StatefulWidget {
  final String tituloEtiqueta;
  final String subtituloEtiqueta;
  final double montoEtiqueta;
    final double height;
     final double width;
  final double fontTitleSize;
  final onPressed;
 final bool buttonRequired;

   EtiquetaInformativa(
      {Key key,
      @required this.tituloEtiqueta,
     @required this.montoEtiqueta,
     @required this.height,
     this.subtituloEtiqueta,
      @required this.width,
      @required this.fontTitleSize,
      @required this.buttonRequired,
  this.onPressed,
   
  }): super(key: key);
    EtiquetaInformativaState createState() => new EtiquetaInformativaState();
}

class EtiquetaInformativaState extends State<EtiquetaInformativa> {

 
@override
  Widget build(BuildContext context) {
final size = MediaQuery.of(context).size;
final pattern = new NumberFormat("\u0024###,###,###.##");
final pattern2 = new NumberFormat("\u0024###,###,###.##");
final azulMarino =  Color.fromRGBO(4, 54, 129, 1);
 
  return Padding(
    padding: EdgeInsets.fromLTRB(widget.width,0,widget.width,0),
    child: Container(
                             alignment: Alignment.center,
                           height: size.height * widget.height ,
                           // width: ,
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
                            child: Container(
       height: size.height * 0.070,
      width: size.width * 0.999,
          color: Colors.white,
          child: Container(
            alignment: Alignment.centerLeft,
            child: ListTile(
              
              leading: widget.subtituloEtiqueta!=null ? Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              //  mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(widget.tituloEtiqueta, style: TextStyle(fontSize: 20, color: Colors.black54),),
                  Text(widget.subtituloEtiqueta, style: TextStyle(fontSize: 14, color: Colors.black54),),
                ],
              ) : Text(widget.tituloEtiqueta, style: TextStyle(fontSize: 20, color: Colors.black54),),
           //  leading: Text('Vida', style: TextStyle(fontSize: 20, color: Colors.black54),),
              
              title: Container(
                alignment: Alignment.centerRight,
                child: widget.montoEtiqueta.isNegative ? Text(pattern2.format(widget.montoEtiqueta),  
                style: TextStyle(color: Colors.red) ,) 
                :Text(pattern.format(widget.montoEtiqueta),  
                style: TextStyle(color: azulMarino, fontSize: 18) ,),
                ),
               trailing: widget.buttonRequired ? IconButton(icon: Icon(Icons.arrow_forward_ios, color: Colors.orange,), onPressed: widget.onPressed) : null,
            //  contentPadding: EdgeInsets.all(16),
        
            ),
          ),
        ),
                          ),
  );
                      

  }

}
