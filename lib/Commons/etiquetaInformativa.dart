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
 final color;
 final fondocolor;
 final bool spaceX;

   EtiquetaInformativa(
      {Key key,
      @required this.tituloEtiqueta,
     @required this.montoEtiqueta,
     @required this.height,
     this.subtituloEtiqueta,
      @required this.width,
      @required this.fontTitleSize,
      @required this.buttonRequired,
     @required this.color,
     this.fondocolor,
  this.onPressed,
  this.spaceX,
   
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
                           
                              
                              // borderRadius: BorderRadius.circular(12.0),
                       /*        boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0, 1),
                                  blurRadius: 0.1,
                                  spreadRadius: 0.1,
                                ),
                              ], */
                            ),
                            child: Container(
       height: size.height * 0.085,
      width: size.width * 0.999,
             color: widget.fondocolor!=null ? widget.fondocolor : Colors.white, 
          child: Container(
            alignment: Alignment.centerLeft,
            child: ListTile(
              
              leading: widget.subtituloEtiqueta!=null ? Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              //  mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(widget.tituloEtiqueta, style: TextStyle(fontSize: widget.fontTitleSize, color: widget.color),),
                  Text(widget.subtituloEtiqueta, style: TextStyle(fontSize: 14, color: Colors.black54),),
                ],
              ) : Text(widget.tituloEtiqueta, style: TextStyle(fontSize: widget.fontTitleSize, color: widget.color),),
           //  leading: Text('Vida', style: TextStyle(fontSize: 20, color: Colors.black54),),
              
              title: Container(
                alignment: Alignment.centerRight,
                child: widget.montoEtiqueta.isNegative ? Text(pattern2.format(widget.montoEtiqueta),  
                style: TextStyle(color: Colors.red, fontSize: 16) ,) 
                :Text(pattern.format(widget.montoEtiqueta),  
                style: TextStyle(color: azulMarino, fontSize: 16) ,),
                ),
               trailing: widget.buttonRequired ? IconButton(icon: Icon(Icons.arrow_forward_ios, color: widget.spaceX!=null || widget.spaceX==true ? Colors.transparent :Colors.orange,), onPressed: widget.onPressed) : null,
            //  contentPadding: EdgeInsets.all(16),
        
            ),
          ),
        ),
                          ),
  );
                      

  }

}
