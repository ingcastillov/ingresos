import 'package:flutter/material.dart';

class ComprobantePage extends StatefulWidget {
  @override
  _ComprobantePageState createState() => _ComprobantePageState();
}

class _ComprobantePageState extends State<ComprobantePage> {

  bool vida = false;
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
          'Comprobante',
          style: TextStyle(color: Colors.blueGrey),
        ),
      ),

      body: ListView(
        children: <Widget>[
          desgloseFactura(),
          notaCredito(),
        ],
      ),
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
            title: Text('Factura', style: TextStyle(color: Color.fromRGBO(10, 48, 136, 1), fontSize: 18),),
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
              child: Text('-300,000,000', style: TextStyle(color: Colors.red),)),
            
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
                Text('238073892649327482347938274', style: TextStyle(color: Colors.black),),
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
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('I.V.A Retenido', style: TextStyle(fontSize: 17,color: Colors.grey),),
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
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('I.V.A Acreditado', style: TextStyle(fontSize: 17, color: Colors.grey),),
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
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('I.S.R', style: TextStyle(fontSize: 17, color: Colors.grey),),
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
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('Impuesto Cedular', style: TextStyle(fontSize: 17, color: Colors.grey),),
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
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('Importe despues de\nimpuestos', style: TextStyle(fontSize: 17, color: Colors.grey),),
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
            contentPadding: EdgeInsets.fromLTRB(25, 0, 75, 0),
            leading: Text('Fecha Ingreso', style: TextStyle(fontSize: 17, color: Colors.grey),),
            title: Container(
                alignment: Alignment.centerRight,
                child: Text('22/07/2019', style: TextStyle(color: Colors.black),)),
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
              ),

      Divider(height: 2, color: Colors.black45,),
         Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            leading: Text('No Vida', style: TextStyle(fontSize: 20),),
            trailing: IconButton(icon: Icon(Icons.keyboard_arrow_up, color: Colors.orange,), onPressed: (){
      
            }),
            title: Container(
                alignment: Alignment.centerRight,
              child: Text('300,000,000', style: TextStyle(color: Colors.black),)),
         
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
      ],
    );
  }


    Widget notaCredito(){
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
            title: Text('Nota de Credito', style: TextStyle(color: Color.fromRGBO(10, 48, 136, 1), fontSize: 18),),
          ),
        ),
        Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            leading: Text('Vida', style: TextStyle(fontSize: 20),),
            trailing: IconButton(icon: Icon(Icons.keyboard_arrow_up, color: Colors.orange,), onPressed: (){
      
            }),
            title:  Container(
                alignment: Alignment.centerRight,
              child: Text('300,000,000', style: TextStyle(color: Colors.red),)),
           
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
      Divider(height: 2, color: Colors.black45,),
         Container(
       height: size.height * 0.080,
      width: size.width * 0.999,
          color: Colors.white,
          child: ListTile(
            leading: Text('No Vida', style: TextStyle(fontSize: 20),),
            trailing: IconButton(icon: Icon(Icons.keyboard_arrow_up, color: Colors.orange,), onPressed: (){
      
            }),
            title:  Container(
             alignment: Alignment.centerRight,
              child: Text('300,000,000', style: TextStyle(color: Colors.black),)),
          
            
          //  contentPadding: EdgeInsets.all(16),
        
          ),
        ),
      ],
    );
  }
}