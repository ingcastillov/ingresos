import 'package:flutter/material.dart';



class TituloEtiquetas extends StatefulWidget {
  final String tituloEtiqueta;
  final double fontsize;
  final bool weight;
 



   TituloEtiquetas(
      {Key key,
      @required this.tituloEtiqueta,
      this.fontsize,
      this.weight,
     
 

   
  }): super(key: key);
   TituloEtiquetasState createState() => new TituloEtiquetasState();
}

class TituloEtiquetasState extends State<TituloEtiquetas> {
final azulMarino =  Color.fromRGBO(4, 54, 129, 1);
 
@override
  Widget build(BuildContext context) {
 
    return    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.tituloEtiqueta,
                            style: TextStyle(fontSize: widget.fontsize==null ? 17 : widget.fontsize, color: azulMarino, fontWeight: widget.weight==true ? FontWeight.bold : null),
                          ),
                        ),
                      );

  }

}
