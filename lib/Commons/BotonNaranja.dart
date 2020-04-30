import 'package:flutter/material.dart';



class BotonNaranja extends StatefulWidget {
  final String tituloBoton;


  final onPressed;

   BotonNaranja(
      {Key key,
      @required this.tituloBoton,
     
 
     this.onPressed,
   
  }): super(key: key);
    BotonNaranjaState createState() => new BotonNaranjaState();
}

class BotonNaranjaState extends State<BotonNaranja> {

 
@override
  Widget build(BuildContext context) {
   final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.085,
      width: size.width * 0.95,
      child: RaisedButton(
        onPressed: widget.onPressed,
        child: Text(
          widget.tituloBoton,
          style: TextStyle(color: Colors.orange),
        ),
        color: Colors.white,
        shape: RoundedRectangleBorder(side: BorderSide(color: Colors.orange)),
      ),
    );

  }

}
