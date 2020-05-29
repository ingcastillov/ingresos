import 'package:flutter/material.dart';
import 'package:ingresos/Commons/etiquetaInformativa.dart';
import 'package:intl/intl.dart';
import 'EtiquetaTituloFacturas.dart';



class DesgloseFactura extends StatefulWidget {
  final String tituloFactura;
  final double montoVida;
  final double comisionesBonosVida;
  final double descuentosPeriodosVida;
  final double otrosMovimientosNoFVida;
  final double saldoDisponibleVida;
  final double montoFacturasVida;
  final double montoNotasVida;


  final double montoNoVida;
  final double comisionesBonosNoVida;
  final double descuentosPeriodosNoVida;
  final double otrosMovimientosNoFNoVida;
  final double saldoDisponibleNoVida;
  final double montoFacturasNoVida;
  final double montoNotasNoVida;

  final double montoTotal;
  final bool sinbuzone;
  final String fechaInicio;
   final String fechaFin;
  
  
  
  final item;
  final itemNotes;
  final itemNV;
  final itemNotesNV;


  final onPressed;

   DesgloseFactura(
      {Key key,
      @required this.tituloFactura,
      @required this.montoVida,
      @required this.comisionesBonosVida,
      @required this.descuentosPeriodosVida,
      @required this.otrosMovimientosNoFVida,
      @required this.saldoDisponibleVida,
      @required this.montoFacturasVida,
       @required this.montoNotasVida,



        @required this.montoNoVida,
      @required this.comisionesBonosNoVida,
      @required this.descuentosPeriodosNoVida,
      @required this.otrosMovimientosNoFNoVida,
      @required this.saldoDisponibleNoVida,
      @required this.montoFacturasNoVida,
       @required this.montoNotasNoVida,


      @required this.montoTotal,
       @required this.item,
       @required this.itemNotes,
        @required this.itemNotesNV,
       @required this.itemNV,
     this.sinbuzone,
    this.onPressed,
    this.fechaInicio,
    this.fechaFin
   
  }): super(key: key);
    DesgloseFacturaState createState() => new DesgloseFacturaState();
}

class DesgloseFacturaState extends State<DesgloseFactura> {
  bool vida = false;
  bool novida = false;
  bool facturas =false;
  bool factura1 =false;
  bool facturaC= false;
  bool impuestos1 =false;
  bool notas =false;
  bool nota1= false;
  bool notaC=false;
  bool impuestos2=false;

  bool facturasN =false;
  bool factura2 =false;
  bool facturaCN= false;
  bool impuestos3 =false;
  bool notasN =false;
  bool nota2= false;
  bool notaCN=false;
  bool impuestos4=false;
  final pattern = new NumberFormat("\u0024###,###,###.##");

 
@override
  Widget build(BuildContext context) {
   final size = MediaQuery.of(context).size;


    return Column(
   
      children: <Widget>[
//PERIODO A FACTURAR


//DATOS INFORMATIVOS PARA COMPROBANTES FISCALES
        Container(child: Text(''),),
  widget.sinbuzone!=null ? Container(
    color: Colors.white,
    child: ListTile(
      contentPadding: EdgeInsets.fromLTRB(15, 0, 65, 0),
      leading: Text('Fecha Inicio', style: TextStyle(color: Colors.black45, fontSize: 16),),
      trailing: Text(widget.fechaInicio!=null ? widget.fechaInicio : "", style: TextStyle(fontSize: 16),),
    ),
  ) : Container(),
  widget.sinbuzone!=null ? Container(
    color: Colors.white,
    child: ListTile(
      contentPadding: EdgeInsets.fromLTRB(15, 0, 65, 0),
      leading: Text('Fecha Fin', style: TextStyle(color: Colors.black45, fontSize: 16),),
      trailing: Text(widget.fechaFin!=null ? widget.fechaFin : "", style: TextStyle(fontSize: 16),),
    ),
  )
  :        Container(
       height: size.height * 0.080,
      width: size.width * 0.999,  color: Colors.white,
          child: ListTile(
            leading: Icon(Icons.line_style, color: Color.fromRGBO(10, 48, 136, 1),),
            title: Text(widget.tituloFactura, style: TextStyle(color: Color.fromRGBO(10, 48, 136, 1), fontSize: 18),),
          ),
        ),

        EtiquetaTituloFacturas(
        visibilidad: vida, 
        tituloEtiqueta: 'Vida', 
        montoEtiqueta: 150000, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 18, 
        fontMontoSize: 18,
        onPressed: (){
         setState(() {
                 if(vida==false){
                   vida=true;
                 }else{
                   vida=false;
                 }

                 if(vida==false && facturas==true){
                   facturas=false;
                 }
                  if(vida==false && factura1==true){
                   factura1=false;
                 }
                
                if(vida==false && notas==true){
                   notas=false;
                 }
                  if(vida==false && nota1==true){
                   nota1=false;
                 }
               
               });
        },
        ),

        /*       */
     
  
 Visibility(
    visible: vida,
   child: Divider(height: 2, color: Colors.black45,)
   ),
      Visibility(
        visible: vida,
      child: EtiquetaInformativa(
       
        tituloEtiqueta: 'Comisiones y Bonos', 
        montoEtiqueta: widget.comisionesBonosVida, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
         spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        )
              ),
         Visibility(
            visible: vida,
   child: Divider(height: 2, color: Colors.black45,)
   ),
            Visibility(
               visible: vida,
      child: EtiquetaInformativa(
        tituloEtiqueta: 'Descuentos del Periodo:', 
        montoEtiqueta: widget.descuentosPeriodosVida, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
        
        spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        )
              ),
     Visibility(
        visible: vida,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: vida,
      child: EtiquetaInformativa(
        tituloEtiqueta: 'Otros Movimientos\nno facturables:', 
        montoEtiqueta: widget.otrosMovimientosNoFVida, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
        spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),
     Visibility(
        visible: vida,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: vida,
      child: EtiquetaInformativa(
        tituloEtiqueta: 'Saldo Disponible', 
        montoEtiqueta: widget.saldoDisponibleVida, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
          spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),

                   Visibility(
                      visible: vida,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: vida,
      child: EtiquetaTituloFacturas(
        visibilidad: facturas, 
        tituloEtiqueta: 'Facturas', 
        montoEtiqueta: widget.montoFacturasVida, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 18, 
        fontMontoSize: 18,
        onPressed: (){
          setState(() {
            
          });
         if(facturas==false){
                   facturas=true;
                 }else{
                   facturas=false;
                 }
        },
        ),
              ),

                Expanded(
              
                  flex: 0,
                  child: Visibility(
      visible: facturas,
      child:      ListView.builder(
       physics: ClampingScrollPhysics(), 
                        shrinkWrap: true,
                      itemCount: widget.item.length,
                      itemBuilder: (context, index) {
                        final int numeroF = index+1;
                     return     Column(
                       
                       children: <Widget>[
                         
                         EtiquetaTituloFacturas(
                                visibilidad: factura1, 
                                tituloEtiqueta: 'Factura $numeroF', 
                                montoEtiqueta: widget.item[index].montoFacturaTotal, 
                                height: 0.085, 
                                width: 0.999, 
                                fontTitleSize: 16, 
                                fontMontoSize: 18,
                                onPressed: (){
                                  setState(() {
                                    
                                  });
                                    if(factura1==false){
                   factura1=true;
                
                  setState(() {
                    
                  });
                 }else{

                   factura1=false;
                   impuestos1=false;
                 }
                                  
                                },
                                
                                ),

                                
                                 Visibility(
      visible: factura1,
      child: EtiquetaInformativa(
        spaceX: true,
        tituloEtiqueta: 'Importe Antes Impuestos', 
        montoEtiqueta: widget.item[index].importeAImpuesto, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
        
        buttonRequired: true, 

        color: Colors.black
        ),
              ),

                    Visibility(
                      visible: factura1,
                      child: EtiquetaTituloFacturas(
                                  visibilidad: impuestos1, 
                                  tituloEtiqueta: 'Impuestos a Aplicar', 
                                  montoEtiqueta: widget.item[index].impuestoAplicar, 
                                  height: 0.085, 
                                  width: 0.999, 
                                  fontTitleSize: 18, 
                                  fontMontoSize: 18,

                                  onPressed: (){
                                    setState(() {
                                      
                                    });
                                      if(impuestos1==false){
                   impuestos1=true;
                 }else{
                   impuestos1=false;
                 }
            
                                    
                                  },
                                  
                                  ),
                    ),
                         Visibility(
      visible: impuestos1,
      child: EtiquetaInformativa(
        fondocolor: Color.fromRGBO(243, 251, 254, 1),
        tituloEtiqueta: 'IVA Acreditado', 
        montoEtiqueta: widget.item[index].ivaAcreditado, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
        
          spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),
                                    Visibility(
      visible: impuestos1,
      child: EtiquetaInformativa(
        fondocolor: Color.fromRGBO(243, 251, 254, 1),
        tituloEtiqueta: 'IVA Retenido', 
        montoEtiqueta: widget.item[index].ivaRetenido, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
        
         spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),
                              Visibility(
      visible: impuestos1,
      child: EtiquetaInformativa(
        fondocolor: Color.fromRGBO(243, 251, 254, 1),
        tituloEtiqueta: 'ISR', 
        montoEtiqueta: widget.item[index].isrMonto, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
          spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),       
                              Visibility(
      visible: impuestos1,
      child: EtiquetaInformativa(
        fondocolor: Color.fromRGBO(243, 251, 254, 1),
        tituloEtiqueta: 'Impuesto Cedular', 
        montoEtiqueta: widget.item[index].impuestoCedular, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
        
         spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),      
                        Visibility(
      visible: factura1,
      child: EtiquetaInformativa(
        tituloEtiqueta: 'Importe despues \nde impuestos', 
        montoEtiqueta: widget.item[index].importeDespuesDeImpuesto, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
        
        spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),

                       ],
                     );
                      },
                    ),
              ),
                ),



      Visibility(
      visible: vida,
      child: EtiquetaTituloFacturas(
        visibilidad: notas, 
        tituloEtiqueta: 'Notas', 
        montoEtiqueta: widget.montoNotasVida, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 18, 
        fontMontoSize: 18,
        onPressed: (){
          setState(() {
            
          });
         if(notas==false){
                   notas=true;
                 }else{
                   notas=false;
                 }
        },
        ),
              ),

                Expanded(
                  flex: 0,
                  child: Visibility(
      visible: notas,
      child:      ListView.builder(
       physics: ClampingScrollPhysics(), 
                        shrinkWrap: true,
                      itemCount: widget.itemNotes.length,
                      itemBuilder: (context, i) {
                        int nnota = i+1;
                     return     Column(
                       children: <Widget>[
                         EtiquetaTituloFacturas(
                                visibilidad: nota1, 
                                tituloEtiqueta: 'Nota $nnota',
                                montoEtiqueta: widget.itemNotes[i].montoFacturaTotal, 
                                height: 0.085, 
                                width: 0.999, 
                                fontTitleSize: 16, 
                                fontMontoSize: 18,
                                onPressed: (){
                                  setState(() {
                                    
                                  });
                                    if(nota1==false){
                   nota1=true;
                 }else{
                   nota1=false;
                   impuestos2=false;
                 }
                                  
                                },
                                
                                ),
     Visibility(
      visible: nota1,
      child: EtiquetaInformativa(
        tituloEtiqueta: 'Importe Antes\nImpuestos', 
        montoEtiqueta: widget.itemNotes[i].importeAImpuesto, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 

        spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),


                    Visibility(
                      visible: nota1,
                      child: EtiquetaTituloFacturas(
                                  visibilidad: impuestos2, 
                                  tituloEtiqueta: 'Impuestos a Aplicar', 
                                  montoEtiqueta: widget.itemNotes[i].impuestoAplicar, 
                                  height: 0.085, 
                                  width: 0.999, 
                                  fontTitleSize: 16, 
                                  fontMontoSize: 18,

                                  onPressed: (){
                                    setState(() {
                                      
                                    });
                                      if(impuestos2==false){
                   impuestos2=true;
                 }else{
                   impuestos2=false;
                 }
            
                                    
                                  },
                                  
                                  ),
                    ),
                         Visibility(
      visible: impuestos2,
      child: EtiquetaInformativa(
        fondocolor: Color.fromRGBO(243, 251, 254, 1),
        tituloEtiqueta: 'IVA Acreditado', 
        montoEtiqueta: widget.itemNotes[i].ivaAcreditado, 
        height: 0.085, 
        width: 0.999, 
        fontTitleSize: 16, 
        
         spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),
                                    Visibility(
      visible: impuestos2,
      child: EtiquetaInformativa(
        fondocolor: Color.fromRGBO(243, 251, 254, 1),
        tituloEtiqueta: 'IVA Retenido', 
        montoEtiqueta: widget.itemNotes[i].ivaRetenido, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
         spaceX: true,
        buttonRequired: true,  
        color: Colors.black
        ),
              ),
                              Visibility(
      visible: impuestos2,
      child: EtiquetaInformativa(
        fondocolor: Color.fromRGBO(243, 251, 254, 1),
        tituloEtiqueta: 'ISR', 
        montoEtiqueta: widget.itemNotes[i].isrMonto, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
       spaceX: true,
        buttonRequired: true,  
        color: Colors.black
        ),
              ),       
                              Visibility(
      visible: impuestos2,
      child: EtiquetaInformativa(
        fondocolor: Color.fromRGBO(243, 251, 254, 1),
        tituloEtiqueta: 'Impuesto Cedular', 
        montoEtiqueta: widget.itemNotes[i].impuestoCedular, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
        
        spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),      
                        Visibility(
      visible: nota1,
      child: EtiquetaInformativa(
        tituloEtiqueta: 'Importe despues \nde impuestos', 
        montoEtiqueta: widget.itemNotes[i].importeDespuesDeImpuesto, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
        spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),

                       ],
                     );
                      },
                    ),
              ),
                ),

       


//NO VIDA


/*  bool facturasN =false;
  bool factura2 =false;
  bool facturaCN= false;
  bool impuestos3 =false;
  bool notasN =false;
  bool nota2= false;
  bool notaCN=false;
  bool impuestos4=false; */

        EtiquetaTituloFacturas(
        visibilidad: novida, 
        tituloEtiqueta: 'No Vida', 
        montoEtiqueta: widget.montoNoVida, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 18, 
        fontMontoSize: 18,
        onPressed: (){
         setState(() {
                 if(novida==false){
                   
                   novida=true;
             /*       facturasN=false;
                   nota2=false;
                   notasN=false;
                   factura2=false;
                   impuestos3=false;
                   impuestos4=false; */
                 }else{
                   novida=false;
                 }

                if(novida==false && facturasN==true){
                   facturasN=false;
                 }
                  if(novida==false && factura2==true){
                   factura2=false;
                 }
                
                if(novida==false && notasN==true){
                   notasN=false;
                 }
                  if(novida==false && nota2==true){
                   nota2=false;
                 }
 
              
               
               });
        },
        ),

        /*       */
     
  
 Visibility(
    visible: novida,
   child: Divider(height: 2, color: Colors.black45,)
   ),
      Visibility(
        visible: novida,
      child: EtiquetaInformativa(
        tituloEtiqueta: 'Comisiones y Bonos', 
        montoEtiqueta: widget.comisionesBonosNoVida, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 

        spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        )
              ),
         Visibility(
            visible: novida,
   child: Divider(height: 2, color: Colors.black45,)
   ),
            Visibility(
               visible: novida,
      child: EtiquetaInformativa(
        tituloEtiqueta: 'Descuentos del\nPeriodo:', 
        montoEtiqueta: widget.descuentosPeriodosNoVida, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
        
        spaceX: true,
        buttonRequired: true,  
        color: Colors.black
        )
              ),
     Visibility(
        visible: novida,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: novida,
      child: EtiquetaInformativa(
        tituloEtiqueta: 'Otros Movimientos\nno facturables:', 
        montoEtiqueta: widget.otrosMovimientosNoFNoVida, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
        
         spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),
     Visibility(
        visible: novida,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: novida,
      child: EtiquetaInformativa(
        tituloEtiqueta: 'Saldo Disponible', 
        montoEtiqueta: widget.saldoDisponibleNoVida, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
        
        spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),

                   Visibility(
                      visible: novida,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: novida,
      child: EtiquetaTituloFacturas(
        visibilidad: facturasN, 
        tituloEtiqueta: 'Facturas', 
        montoEtiqueta: widget.montoFacturasNoVida, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
        fontMontoSize: 18,
        onPressed: (){
          setState(() {
            
          });
         if(facturasN==false){
                   facturasN=true;
                 }else{
                   facturasN=false;
                 }
        },
        ),
              ),

                Expanded(
              
                  flex: 0,
                  child: Visibility(
      visible: facturasN,
      child:      ListView.builder(
       physics: ClampingScrollPhysics(), 
                        shrinkWrap: true,
                      itemCount: widget.itemNV.length,
                      itemBuilder: (context, index) {
                        final int numeroF = index+1;
                     return     Column(
                       
                       children: <Widget>[
                         
                         EtiquetaTituloFacturas(
                                visibilidad: factura2, 
                                tituloEtiqueta: 'Factura $numeroF', 
                                montoEtiqueta: widget.itemNV[index].montoFacturaTotal, 
                                height: 0.085, 
                                width: 0.999, 
                                fontTitleSize: 16, 
                                fontMontoSize: 18,
                                onPressed: (){
                                  setState(() {
                                    
                                  });
                                    if(factura2==false){
                   factura2=true;
                
                  setState(() {
                    
                  });
                 }else{

                   factura2=false;
                   impuestos3=false;
                 }
                                  
                                },
                                
                                ),
                                 Visibility(
      visible: factura2,
      child: EtiquetaInformativa(
        tituloEtiqueta: 'Importe Antes\nImpuestos', 
        montoEtiqueta: widget.itemNV[index].importeAImpuesto, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
         spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),


                    Visibility(
                      visible: factura2,
                      child: EtiquetaTituloFacturas(
                                  visibilidad: impuestos3, 
                                  tituloEtiqueta: 'Impuestos a Aplicar', 
                                  montoEtiqueta: widget.itemNV[index].impuestoAplicar, 
                                  height: 0.085, 
                                  width: 0.999, 
                                  fontTitleSize: 16, 
                                  fontMontoSize: 18,

                                  onPressed: (){
                                    setState(() {
                                      
                                    });
                                      if(impuestos3==false){
                   impuestos3=true;
                 }else{
                   impuestos3=false;
                 }
            
                                    
                                  },
                                  
                                  ),
                    ),
                         Visibility(
      visible: impuestos3,
      child: EtiquetaInformativa(
        fondocolor: Color.fromRGBO(243, 251, 254, 1),
        tituloEtiqueta: 'IVA Acreditado', 
        montoEtiqueta: widget.itemNV[index].ivaAcreditado,
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
         spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),
                                    Visibility(
      visible: impuestos3,
      child: EtiquetaInformativa(
        fondocolor: Color.fromRGBO(243, 251, 254, 1),
        tituloEtiqueta: 'IVA Retenido', 
        montoEtiqueta: widget.itemNV[index].ivaRetenido,
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
         spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),
                              Visibility(
      visible: impuestos3,
      child: EtiquetaInformativa(
        fondocolor: Color.fromRGBO(243, 251, 254, 1),
        tituloEtiqueta: 'ISR', 
        montoEtiqueta: widget.itemNV[index].isrMonto,
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
         spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),       
                              Visibility(
      visible: impuestos3,
      child: EtiquetaInformativa(
        fondocolor: Color.fromRGBO(243, 251, 254, 1),
        tituloEtiqueta: 'Impuesto Cedular', 
        montoEtiqueta: widget.itemNV[index].impuestoCedular,
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
       spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),      
                        Visibility(
      visible: factura2,
      child: EtiquetaInformativa(
        tituloEtiqueta: 'Importe despues\nde impuestos', 
        montoEtiqueta: widget.itemNV[index].importeDespuesDeImpuesto,
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
        spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),

                       ],
                     );
                      },
                    ),
              ),
                ),



      Visibility(
      visible: novida,
      child: EtiquetaTituloFacturas(
        visibilidad: notasN, 
        tituloEtiqueta: 'Notas', 
        montoEtiqueta: widget.montoNotasNoVida, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 16, 
        fontMontoSize: 18,
        onPressed: (){
          setState(() {
            
          });
         if(notasN==false){
                   notasN=true;
                 }else{
                   notasN=false;
                 }
        },
        ),
              ),

                Expanded(
                  flex: 0,
                  child: Visibility(
      visible: notasN,
      child:      ListView.builder(
       physics: ClampingScrollPhysics(), 
                        shrinkWrap: true,
                      itemCount: widget.itemNotesNV.length,
                      itemBuilder: (context, i) {
                        int nnota = i+1;
                     return     Column(
                       children: <Widget>[
                         EtiquetaTituloFacturas(
                                visibilidad: nota1, 
                                tituloEtiqueta: 'Nota $nnota',
                                montoEtiqueta: widget.itemNotesNV[i].montoFacturaTotal, 
                                height: 0.085, 
                                width: 0.999, 
                                fontTitleSize: 16, 
                                fontMontoSize: 16,
                                onPressed: (){
                                  setState(() {
                                    
                                  });
                                    if(nota2==false){
                   nota2=true;
                 }else{
                   nota2=false;
                   impuestos4=false;
                 }
                                  
                                },
                                
                                ),
     Visibility(
      visible: nota2,
      child: EtiquetaInformativa(
        tituloEtiqueta: 'Importe Antes\nImpuestos', 
        montoEtiqueta: widget.itemNotesNV[i].importeAImpuesto, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 18, 
        spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),


                    Visibility(
                      visible: nota2,
                      child: EtiquetaTituloFacturas(
                                  visibilidad: impuestos4, 
                                  tituloEtiqueta: 'Impuestos a Aplicar', 
                                  montoEtiqueta: widget.itemNotesNV[i].impuestoAplicar, 
                                  height: 0.085, 
                                  width: 0.999, 
                                  fontTitleSize: 16, 
                                  fontMontoSize: 16,

                                  onPressed: (){
                                    setState(() {
                                      
                                    });
                                      if(impuestos4==false){
                   impuestos4=true;
                 }else{
                   impuestos4=false;
                 }
            
                                    
                                  },
                                  
                                  ),
                    ),
                         Visibility(
      visible: impuestos4,
      child: EtiquetaInformativa(
        fondocolor: Color.fromRGBO(243, 251, 254, 1),
        tituloEtiqueta: 'IVA Acreditado', 
        montoEtiqueta: widget.itemNotesNV[i].ivaAcreditado, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 18, 
        
        spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),
                                    Visibility(
      visible: impuestos4,
      child: EtiquetaInformativa(
        fondocolor: Color.fromRGBO(243, 251, 254, 1),
        tituloEtiqueta: 'IVA Retenido', 
        montoEtiqueta: widget.itemNotesNV[i].ivaRetenido, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 18, 
         spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),
                              Visibility(
      visible: impuestos4,
      child: EtiquetaInformativa(
        fondocolor: Color.fromRGBO(243, 251, 254, 1),
        tituloEtiqueta: 'ISR', 
        montoEtiqueta: widget.itemNotesNV[i].isrMonto, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 18, 
         spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),       
                              Visibility(
      visible: impuestos4,
      child: EtiquetaInformativa(
        fondocolor: Color.fromRGBO(243, 251, 254, 1),
        tituloEtiqueta: 'Impuesto Cedular', 
        montoEtiqueta: widget.itemNotesNV[i].impuestoCedular, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 18, 
         spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),      
                        Visibility(
      visible: nota2,
      child: EtiquetaInformativa(
        tituloEtiqueta: 'Importe despues\nde impuestos', 
        montoEtiqueta: widget.itemNotesNV[i].importeDespuesDeImpuesto, 
        height: 0.080, 
        width: 0.999, 
        fontTitleSize: 18, 
         spaceX: true,
        buttonRequired: true, 
        color: Colors.black
        ),
              ),

                       ],
                     );
                      },
                    ),
              ),
                ),




//total
Container(
  color: Colors.white,
  child:   ListTile(
    contentPadding: EdgeInsets.fromLTRB(15, 0, 80, 0),
  leading: Text('Total', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
  trailing: Text(pattern.format(widget.montoTotal), style: TextStyle(fontSize: 18,color: Color.fromRGBO(10, 48, 136, 1)),),
  ),
),

SizedBox(
  height: 10,
),
Container(
 
  padding: EdgeInsets.fromLTRB(0,10,0,0),
  height: size.height*0.095,
  width: size.width*0.97,
  child: RaisedButton(
    
    color: Colors.deepOrange,
    child: Text(widget.sinbuzone!=null ? "ENVIAR DATOS DE FACTURACIÓN" :'GENERAR FACTURA', style: TextStyle(color: Colors.white),),
    onPressed: widget.onPressed,
    ))


  

  
      ],
    );


  }

}


