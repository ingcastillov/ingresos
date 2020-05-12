import 'package:flutter/material.dart';



class VentanaEmergente extends StatefulWidget {

  final String tituloText;
  final String contenidoText;
  final color;
  final color2;
  final icono;
  final bool vinculo;
  final String contenidoVinculo;
  final bool visibilidad;
  final onPressedClear;
 


  final onPressed;

   VentanaEmergente(
      {Key key,
       @required this.tituloText,
       @required this.contenidoText,
       @required this.color,
       @required this.icono,
        @required this.color2,
        @required this.vinculo,
        @required this.visibilidad,
        this.contenidoVinculo,
     
 
     this.onPressed,
    @required this.onPressedClear,
   
  }): super(key: key);
    VentanaEmergenteState createState() => new VentanaEmergenteState();
}

class VentanaEmergenteState extends State<VentanaEmergente> {
bool visible=true;
 
@override
  Widget build(BuildContext context) {


return Visibility(
  visible: widget.visibilidad,
  child:    Container(

      padding: EdgeInsets.all(8),

      color: widget.color,
      child:   ListTile(
         isThreeLine: true,
         dense: true,

        contentPadding: EdgeInsets.all(8),
  
        leading: Icon(widget.icono, color: widget.color2,) ,
       title: Text(widget.tituloText, style: TextStyle(color: widget.color2, fontSize: 13),),
       subtitle:
       widget.vinculo ? GestureDetector(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(widget.contenidoText, style: TextStyle(fontSize: 14)),
               Text(widget.contenidoVinculo, style: TextStyle(decoration: TextDecoration.underline, fontSize: 14),),
            ],
          ),
          onTap: widget.onPressed

       )
        :  Text('\n'+widget.contenidoText, style: TextStyle( fontSize: 14)),
        trailing: IconButton(icon: Icon(Icons.clear, color: widget.color2,), onPressed: widget.onPressedClear
        ),
      ),
    ),
  
);

  }

}
