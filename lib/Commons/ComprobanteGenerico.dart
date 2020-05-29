import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class ComprobanteGenerico extends StatefulWidget {
  final String tituloComprobante;
  final double montoVida;
  final String numeroFactura;
  final double importeAImpuestos;
  final double ivaRetenido;
  final double ivaAcreditado;
  final double isrMonto;
  final double impuestoCedular;
  final double importeDImpuestos;
  final String fechaIngreso;

    
  final double montoNoVida;
  final String numeroFacturaNoVida;
  final double importeAImpuestosNoVida;
  final double ivaRetenidoNoVida;
  final double ivaAcreditadoNoVida;
  final double isrMontoNoVida;
  final double impuestoCedularNoVida;
  final double importeDImpuestosNoVida;
  final String fechaIngresoNoVida;



   ComprobanteGenerico(
      {Key key,
      @required this.tituloComprobante,
       @required this.montoVida,
       @required this.numeroFactura,
       @required this.importeAImpuestos,
       @required this.ivaRetenido,
       @required this.ivaAcreditado,
       @required this.isrMonto,
       @required this.impuestoCedular,
       @required this.importeDImpuestos,
       @required this.fechaIngreso,

           @required this.montoNoVida,
       @required this.numeroFacturaNoVida,
       @required this.importeAImpuestosNoVida,
       @required this.ivaRetenidoNoVida,
       @required this.ivaAcreditadoNoVida,
       @required this.isrMontoNoVida,
       @required this.impuestoCedularNoVida,
       @required this.importeDImpuestosNoVida,
       @required this.fechaIngresoNoVida,
     
 
   
   
  }): super(key: key);
    ComprobanteGenericoState createState() => new ComprobanteGenericoState();
}

class ComprobanteGenericoState extends State<ComprobanteGenerico> {
    final pattern = new NumberFormat("\u0024###,###,###.##");
bool vida=false;
bool novida=false;
 
@override
  Widget build(BuildContext context) {
   final size = MediaQuery.of(context).size;
      
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(child: Text(''),),
          Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            leading: Icon(Icons.line_style, color: Color.fromRGBO(10, 48, 136, 1),),
            title: Text(widget.tituloComprobante, style: TextStyle(color: Color.fromRGBO(10, 48, 136, 1), fontSize: 18),),
          ),
        ),
        Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            leading: Text('Vida', style: TextStyle(fontSize: 20),),
            trailing: IconButton(icon: Icon(Icons.keyboard_arrow_up, color: Colors.orange,), onPressed: (){
             setState(() {
               if(vida==false){
                 vida=true;
               }else{
                 vida=false;
               }
             
             });
            
            }),
            title: Container(
              alignment: Alignment.centerRight,
              child: Text(pattern.format(widget.montoVida),  style: widget.montoVida.isNegative ? TextStyle(color: Colors.red) : TextStyle(color: Colors.black) ,)),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
   Visibility(
    visible: vida,
   child: Divider(height: 2, color: Colors.black45,)
   ),
      Visibility(
        visible: vida,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
           // contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
           
            title: Column(
             // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Numero de Factura UID', style: TextStyle(color: Colors.grey, fontSize: 18),),
                Text(widget.numeroFactura, style: TextStyle(color: Colors.black),),
              ],
                 ),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
 Visibility(
    visible: vida,
   child: Divider(height: 2, color: Colors.black45,)
   ),
      Visibility(
        visible: vida,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('Importe Antes\nde Impuestos', style: TextStyle(fontSize: 17,color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text(pattern.format(widget.importeAImpuestos),  style: widget.importeAImpuestos.isNegative ? TextStyle(color: Colors.red) : TextStyle(color: Colors.black) ,)
                ),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
         Visibility(
            visible: vida,
   child: Divider(height: 2, color: Colors.black45,)
   ),
            Visibility(
               visible: vida,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('I.V.A Retenido', style: TextStyle(fontSize: 17,color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text(pattern.format(widget.ivaRetenido),  style: widget.ivaRetenido.isNegative ? TextStyle(color: Colors.red) : TextStyle(color: Colors.black) ,)
                ),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
     Visibility(
        visible: vida,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: vida,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('I.V.A Acreditado', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text(pattern.format(widget.ivaAcreditado),  style: widget.ivaAcreditado.isNegative ? TextStyle(color: Colors.red) : TextStyle(color: Colors.black) ,)
                ),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
     Visibility(
        visible: vida,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: vida,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('I.S.R', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text(pattern.format(widget.isrMonto),  style: widget.isrMonto.isNegative ? TextStyle(color: Colors.red) : TextStyle(color: Colors.black) ,)
                ),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),

                   Visibility(
                      visible: vida,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: vida,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('Impuesto Cedular', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text(pattern.format(widget.impuestoCedular),  style: widget.impuestoCedular.isNegative ? TextStyle(color: Colors.red) : TextStyle(color: Colors.black) ,)
                ),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),

                   Visibility(
                      visible: vida,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: vida,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('Importe despues de\nimpuestos', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text(pattern.format(widget.importeDImpuestos),  style: widget.importeDImpuestos.isNegative ? TextStyle(color: Colors.red) : TextStyle(color: Colors.black) ,)
                ),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
             Visibility(
                visible: vida,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: vida,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('Fecha Ingreso', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text(widget.fechaIngreso, style: TextStyle(color: Colors.black),)
                ),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),


      //NO VIDA


        Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            leading: Text('No Vida', style: TextStyle(fontSize: 20),),
            trailing: IconButton(icon: Icon(Icons.keyboard_arrow_up, color: Colors.orange,), onPressed: (){
             setState(() {
               if(novida==false){
                 novida=true;
               }else{
                 novida=false;
               }
             
             });
            
            }),
            title: Container(
              alignment: Alignment.centerRight,
              child: Text(pattern.format(widget.montoNoVida),  style: widget.montoVida.isNegative ? TextStyle(color: Colors.red) : TextStyle(color: Colors.black) ,)),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
   Visibility(
    visible: novida,
   child: Divider(height: 2, color: Colors.black45,)
   ),
      Visibility(
        visible: novida,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
           // contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
           
            title: Column(
             // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Numero de Factura UID', style: TextStyle(color: Colors.grey, fontSize: 18),),
                Text(widget.numeroFacturaNoVida, style: TextStyle(color: Colors.black),),
              ],
                 ),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
 Visibility(
    visible: novida,
   child: Divider(height: 2, color: Colors.black45,)
   ),
      Visibility(
        visible: novida,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('Importe Antes\nde Impuestos', style: TextStyle(fontSize: 17,color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text(pattern.format(widget.importeAImpuestosNoVida),  style: widget.importeAImpuestos.isNegative ? TextStyle(color: Colors.red) : TextStyle(color: Colors.black) ,)
                ),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
         Visibility(
            visible: novida,
   child: Divider(height: 2, color: Colors.black45,)
   ),
            Visibility(
               visible: novida,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('I.V.A Retenido', style: TextStyle(fontSize: 17,color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text(pattern.format(widget.ivaRetenidoNoVida),  style: widget.ivaRetenido.isNegative ? TextStyle(color: Colors.red) : TextStyle(color: Colors.black) ,)
                ),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
     Visibility(
        visible: novida,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: novida,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('I.V.A Acreditado', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text(pattern.format(widget.ivaAcreditadoNoVida),  style: widget.ivaAcreditado.isNegative ? TextStyle(color: Colors.red) : TextStyle(color: Colors.black) ,)
                ),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
     Visibility(
        visible: novida,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: novida,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('I.S.R', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text(pattern.format(widget.isrMontoNoVida),  style: widget.isrMonto.isNegative ? TextStyle(color: Colors.red) : TextStyle(color: Colors.black) ,)
                ),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),

                   Visibility(
                      visible: novida,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: novida,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('Impuesto Cedular', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text(pattern.format(widget.impuestoCedularNoVida),  style: widget.impuestoCedular.isNegative ? TextStyle(color: Colors.red) : TextStyle(color: Colors.black) ,)
                ),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),

                   Visibility(
                      visible: novida,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: novida,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('Importe despues de\nimpuestos', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text(pattern.format(widget.importeDImpuestosNoVida),  style: widget.importeDImpuestos.isNegative ? TextStyle(color: Colors.red) : TextStyle(color: Colors.black) ,)
                ),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
             Visibility(
                visible: novida,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: novida,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('Fecha Ingreso', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text(widget.fechaIngresoNoVida, style: TextStyle(color: Colors.black),)
                ),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),


      ],
    );

  }

}
