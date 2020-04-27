import 'package:flutter/material.dart';

class FacturacionPage extends StatefulWidget {
  @override
  _FacturacionPageState createState() => _FacturacionPageState();
}

class _FacturacionPageState extends State<FacturacionPage> {

  bool vida = false;
  bool facturas =false;
  bool factura1 =false;
  bool notas =false;
  bool nota1= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.orange,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        centerTitle: true,
        title: Text(
          'Datos de Facturación',
          style: TextStyle(color: Colors.blueGrey),
        ),
      ),

      body: ListView(
        children: <Widget>[
           periodoFacturar(),
          desgloseFactura(),
         
        ],
      ),
    );


  }

    Widget periodoFacturar(){
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
            leading: Icon(Icons.calendar_today, color: Color.fromRGBO(10, 48, 136, 1),),
            title: Text('Periodo a Facturar', style: TextStyle(color: Color.fromRGBO(10, 48, 136, 1), fontSize: 18),),
          ),
        ),
        
        Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 5),
            leading: Text('Estatus de Facturación', style: TextStyle(fontSize: 17, color: Colors.black87),),
         
            title:  Container(
                alignment: Alignment.centerRight,
              child: Text('Reservado', style: TextStyle( fontSize: 16, color: Color.fromRGBO(10, 48, 136, 1)),)),
           
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
      Divider(height: 2, color: Colors.black45,),
  Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 5),
            leading: Text('Fecha de Inicio', style: TextStyle(fontSize: 17, color: Colors.black87),),
         
            title:  Container(
                alignment: Alignment.centerRight,
              child: Text('06/04/2020', style: TextStyle( fontSize: 16, color: Color.fromRGBO(10, 48, 136, 1)),)),
           
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
            Divider(height: 2, color: Colors.black45,),
      Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 5),
            leading: Text('Fecha de Fin', style: TextStyle(fontSize: 17, color: Colors.black87),),
         
            title:  Container(
                alignment: Alignment.centerRight,
              child: Text('06/04/2020', style: TextStyle( fontSize: 16, color: Color.fromRGBO(10, 48, 136, 1)),)),
           
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
    Divider(height: 2, color: Colors.black45,),
        Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 5),
            leading: Text('Numero de dias', style: TextStyle(fontSize: 17, color: Colors.black87),),
         
            title:  Container(
                alignment: Alignment.centerRight,
              child: Text('27', style: TextStyle( fontSize: 16, color: Color.fromRGBO(10, 48, 136, 1)),)),
           
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
            Divider(height: 2, color: Colors.black45,),
          Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 5),
            leading: Text('Pago', style: TextStyle(fontSize: 17, color: Colors.black87),),
         
            title:  Container(
                alignment: Alignment.centerRight,
              child: Text('74.96', style: TextStyle( fontSize: 16, color: Color.fromRGBO(10, 48, 136, 1)),)),
           
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
      ],
    );
  }
  Widget desgloseFactura(){
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
            title: Text('Datos informativos para comprobantes fiscales', style: TextStyle(color: Color.fromRGBO(10, 48, 136, 1), fontSize: 18),),
          ),
        ),
        Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            leading: Text('Vida', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            trailing: IconButton(icon: Icon(Icons.keyboard_arrow_up, color: Colors.orange,), onPressed: (){
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
            
            }),
            title: Container(
              alignment: Alignment.centerRight,
              child: Text('15,200', style: TextStyle(fontSize: 18,color: Color.fromRGBO(10, 48, 136, 1)),)),
            
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
            contentPadding: EdgeInsets.fromLTRB(15, 15, 35, 5),
            leading: Text('Comisiones y Bonos', style: TextStyle(fontSize: 17,color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('-300,000,000', style: TextStyle(color: Colors.red),)),
            
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
       contentPadding: EdgeInsets.fromLTRB(15, 15, 35, 5),
            leading: Text('Descuentos del Periodo', style: TextStyle(fontSize: 17,color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('-300,000,000', style: TextStyle(color: Colors.red),)),
            
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
         contentPadding: EdgeInsets.fromLTRB(15, 15, 35, 5),
            leading: Text('Otros Movimientos\nno facturables:', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('-300,000,000', style: TextStyle(color: Colors.red),)),
            
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
        contentPadding: EdgeInsets.fromLTRB(15, 15, 35, 5),
            leading: Text('Saldo Disponible', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('-300,000,000', style: TextStyle(color: Colors.red),)),
            
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
            contentPadding: EdgeInsets.fromLTRB(25, 15, 0, 5),
            leading: Text('Facturas', style: TextStyle(fontSize: 18),),
            trailing: IconButton(icon: Icon(Icons.keyboard_arrow_up, color: Colors.orange,), onPressed: (){
                setState(() {
               if(facturas==false){
                 facturas=true;
               }else{
                 facturas=false;
               }

               if(facturas==false && factura1==true){
                 factura1=false;
               }
             
             });
            }),
            title: Container(
                alignment: Alignment.centerRight,
              child: Text('50,000', style: TextStyle(color: Color.fromRGBO(10, 48, 136, 1)),)),
         
      
      
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
          Visibility(
                      visible: facturas,
   child: Divider(height: 2, color: Colors.black45,)
   ),
     Visibility(
      visible: facturas,
      child: Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(45, 15, 0, 5),
            leading: Text('Factura 1', style: TextStyle(fontSize: 18, color: Colors.grey),),
            trailing: IconButton(icon: Icon(Icons.keyboard_arrow_up, color: Colors.orange,), onPressed: (){
                setState(() {
               if(factura1==false){
                 factura1=true;
               }else{
                 factura1=false;
               }
             
             });
            }),
            title: Container(
                alignment: Alignment.centerRight,
              child: Text('50,000', style: TextStyle(color: Color.fromRGBO(10, 48, 136, 1)),)),
         
      
      
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
                   Visibility(
                      visible: factura1,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: factura1,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 15, 35, 5),
            leading: Text('Importe antes impuesto', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('-300,000,000', style: TextStyle(color: Colors.red),)),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),

                      Visibility(
                      visible: factura1,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: factura1,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 15, 35, 5),
            leading: Text('Impuestos a Aplicar', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('-300,000,000', style: TextStyle(color: Colors.red),)),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
             Visibility(
                visible: factura1,
   child: Divider(height: 2, color: Colors.black45,)
   ),



   Visibility(
      visible: factura1,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 15, 35, 5),
            leading: Text('IVA Acreditado', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('-300,000,000', style: TextStyle(color: Colors.red),)),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
                         Visibility(
                      visible: factura1,
   child: Divider(height: 2, color: Colors.black45,)
   ),

      Visibility(
      visible: factura1,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 15, 35, 5),
            leading: Text('IVA Retenido', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('-300,000,000', style: TextStyle(color: Colors.red),)),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
                         Visibility(
                      visible: factura1,
   child: Divider(height: 2, color: Colors.black45,)
   ),

         Visibility(
      visible: factura1,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 15, 35, 5),
            leading: Text('ISR', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('-300,000,000', style: TextStyle(color: Colors.red),)),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
                         Visibility(
                      visible: factura1,
   child: Divider(height: 2, color: Colors.black45,)
   ),

            Visibility(
      visible: factura1,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 15, 35, 5),
            leading: Text('Impuesto Cedular', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('-300,000,000', style: TextStyle(color: Colors.red),)),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
                         Visibility(
                      visible: factura1,
   child: Divider(height: 2, color: Colors.black45,)
   ),
         Visibility(
      visible: factura1,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 15, 35, 5),
            leading: Text('Importe despues de Impuesto', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('-300,000,000', style: TextStyle(color: Colors.red),)),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),

                         Visibility(
                      visible: factura1,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: factura1,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 15, 35, 5),
            leading: Text('Fecha Ingreso', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('22/07/2019', style: TextStyle(color: Colors.black),)),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),

    

  
  Visibility(
      visible: vida,
      child: Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(23, 15, 0, 5),
            leading: Text('Notas de credito', style: TextStyle(fontSize: 17),),
            trailing: IconButton(icon: Icon(Icons.keyboard_arrow_up, color: Colors.orange,), onPressed: (){
                setState(() {
               if(notas==false){
                 notas=true;
               }else{
                 notas=false;
               }

               if(notas==false && nota1==true){
                 nota1=false;
               }
             
             });
            }),
            title: Container(
                alignment: Alignment.centerRight,
              child: Text('50,000', style: TextStyle(color: Color.fromRGBO(10, 48, 136, 1)),)),
         
      
      
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
          Visibility(
                      visible: notas,
   child: Divider(height: 2, color: Colors.black45,)
   ),
     Visibility(
      visible: notas,
      child: Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(45, 15, 0, 5),
            leading: Text('Nota de Credito 1', style: TextStyle(fontSize: 18, color: Colors.grey),),
            trailing: IconButton(icon: Icon(Icons.keyboard_arrow_up, color: Colors.orange,), onPressed: (){
                setState(() {
               if(nota1==false){
                 nota1=true;
               }else{
                 nota1=false;
               }
             
             });
            }),
            title: Container(
                alignment: Alignment.centerRight,
              child: Text('50,000', style: TextStyle(color: Color.fromRGBO(10, 48, 136, 1)),)),
         
      
      
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
                   Visibility(
                      visible: nota1,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: nota1,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 15, 35, 5),
            leading: Text('Importe antes impuesto', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('-300,000,000', style: TextStyle(color: Colors.red),)),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),

                      Visibility(
                      visible: nota1,
   child: Divider(height: 2, color: Colors.black45,)
   ),

   Visibility(
      visible: nota1,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 15, 35, 5),
            leading: Text('Impuestos a Aplicar', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('-300,000,000', style: TextStyle(color: Colors.red),)),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
             Visibility(
                visible: nota1,
   child: Divider(height: 2, color: Colors.black45,)
   ),



   Visibility(
      visible: nota1,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 15, 35, 5),
            leading: Text('IVA Acreditado', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('-300,000,000', style: TextStyle(color: Colors.red),)),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
                         Visibility(
                      visible: nota1,
   child: Divider(height: 2, color: Colors.black45,)
   ),

      Visibility(
      visible: nota1,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 15, 35, 5),
            leading: Text('IVA Retenido', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('-300,000,000', style: TextStyle(color: Colors.red),)),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
                         Visibility(
                      visible: nota1,
   child: Divider(height: 2, color: Colors.black45,)
   ),

         Visibility(
      visible: nota1,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 15, 35, 5),
            leading: Text('ISR', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('-300,000,000', style: TextStyle(color: Colors.red),)),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
                         Visibility(
                      visible: nota1,
   child: Divider(height: 2, color: Colors.black45,)
   ),

            Visibility(
      visible: nota1,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 15, 35, 5),
            leading: Text('Impuesto Cedular', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('-300,000,000', style: TextStyle(color: Colors.red),)),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),
                         Visibility(
                      visible: nota1,
   child: Divider(height: 2, color: Colors.black45,)
   ),
         Visibility(
      visible: nota1,
      child: Container(
      height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 15, 35, 5),
            leading: Text('Importe despues de Impuesto', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('-300,000,000', style: TextStyle(color: Colors.red),)),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),

                         Visibility(
                      visible: nota1,
   child: Divider(height: 2, color: Colors.black45,)
   ),



      Divider(height: 2, color: Colors.black45,),
         Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 15, 15, 5),
            leading: Text('No Vida', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            trailing: IconButton(icon: Icon(Icons.keyboard_arrow_up, color: Colors.orange,), onPressed: (){
      
            }),
            title: Container(
                alignment: Alignment.centerRight,
              child: Text('300,000,000', style: TextStyle(color: Color.fromRGBO(10, 48, 136, 1)),)),
         
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
           Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            leading: Text('Total', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
           contentPadding: EdgeInsets.fromLTRB(15, 15, 85, 5),
            title: Container(
                alignment: Alignment.centerRight,
              child: Text('111,111', style: TextStyle(color: Color.fromRGBO(10, 48, 136, 1)),)),
         
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),

                Container(
                  padding: EdgeInsets.all(8),
       height: size.height * 0.070,
      width: size.width * 0.90,
          color: Colors.white,
          child: RaisedButton(
            child: Text('GENERAR FACTURA', style: TextStyle(color: Colors.white),),
            color: Colors.orange,
            onPressed: (){},)
        ),
      ],
    );
  }



}