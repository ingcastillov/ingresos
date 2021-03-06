
import 'package:flutter/material.dart';

import 'package:ingresos/main.dart';
import 'package:ingresos/periodos_anteriores.dart';
import 'package:ingresos/saldo_disponible.dart';
import 'package:ingresos/ultimo_periodo_facturado.dart';

import 'package:intl/intl.dart';

import 'Commons/ventanaEmergente.dart';








class DetalleIngresos extends StatefulWidget {
final bool status;

  const DetalleIngresos({Key key, this.status}) : super(key: key);


  @override
  _DetalleIngresosState createState() => _DetalleIngresosState();
}

class _DetalleIngresosState extends State<DetalleIngresos> {

 bool visibilityAlerta=true;
 bool visibilityAlerta2=true;

  double montoIngresos;

  double saldoDisponible= 84692.76;
  final pattern = new NumberFormat("\u0024###,###,###.##");

  /* DetalleIngresos detalles =  new DetalleIngresos(); */
 
  double dato;
  double elDetalle;
 
    //DetallesProvider provider = new DetallesProvider();
    bool lilpeep;
      String buzon = 'S';


  @override
  void initState() { 
  
 
   
    
    super.initState();
 // detalle.detalleGeneralDto.imp==null ? dato=0 : dato=  detalle.detalleGeneralDto.imp;
  }
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
             Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyApp()));
            }),
        centerTitle: true,
        title: Text(
          'Detalle de Ingresos',
          style: TextStyle(color: Colors.blueGrey),
        ),
      ),
      body: Column(
      
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
              
              Stack(
                children: <Widget>[
                  _crearFondo(context),
                  listaOpciones(),
                ],
              ),
              
              listaOpciones2(),
      widget.status==false ? alertaStatus() : Container(),
      
      
      widget.status==true ? alertaStatusAproved() : Container(),
    
       
         

              
             
           
        ],
      ),
    
    );
  }

  Widget _crearFondo(context) {
    final size = MediaQuery.of(context).size;
  
    final colorFondo = Container(
      height: size.height * 0.3,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
        Color.fromRGBO(19, 64, 155, 1.0),
        Color.fromRGBO(19, 64, 155, 1.0),
        Color.fromRGBO(19, 64, 155, 1.0),
        Color.fromRGBO(0, 0, 0, 1.0),
      ])),
    );

    final circulo = Container(
      width: 400.0,
      height: 400.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        color: Color.fromRGBO(255, 255, 255, 0.05),
      ),
    );
        final circulo2 = Container(
      width: 400.0,
      height: 400.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        color: Color.fromRGBO(255, 255, 255, 0.45),
      ),
    );
   
    return Stack(
      children: <Widget>[
        colorFondo,
        Positioned(top: -70, right: 0, child: circulo),
        Positioned(top: -40, right: -120, child: circulo),
      buzon=='' ?  Positioned(top: -40, right: -250, child: circulo) :
      Positioned(top: -40, right: -250, child: circulo2),

        /*   Positioned(top: 100, left: 0, child: circulo),
                          Positioned(top: 50, left: 0, child: circulo),
                           Positioned(top: 0, left: 0, child: circulo),
                           Positioned(top: -80, left: 0, child: circulo),
                            Positioned(top: -160, left: 0, child: circulo),
                            Positioned(top: -250, left: 0, child: circulo), */

     Container(

       padding: EdgeInsets.fromLTRB(20,30,0,30),
   child: Column(

     children: <Widget>[
       Container(
         alignment: Alignment.topLeft,

         child: Text('Saldo Disponible', style: TextStyle(color: Colors.blueAccent, fontSize: 14),),
      
         ),
         SizedBox(height:8),
        Container(
alignment: Alignment.centerLeft,
         child: Text(pattern.format(2000000), style: TextStyle(color: Colors.white, fontSize: 32),),
         ),
  SizedBox(height:10),
          Row(
            children: <Widget>[
              Container(
         alignment: Alignment.centerLeft,

         child: Text('Del 14/10/19 a 16/10/19', style: TextStyle(color: Colors.white, fontSize: 14),),
      
         ),
          SizedBox(width:size.width*0.20 ),
                Container(
         alignment: Alignment.bottomRight,

         child: Text('Ver Detalle', style: TextStyle(color: Colors.white, fontSize: 14),),
      
         ),
                Container(
         alignment: Alignment.bottomRight,
        // padding: EdgeInsets.all(89),
         child: IconButton( iconSize: 18,icon: Icon(Icons.arrow_forward_ios, color: Colors.white,), onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => SaldoDisponible() ));
         })),
      
     
            ],
          ),


     ],
   ),
     ),

   /*       Container(
          padding: EdgeInsets.only(top: size.height*0.180, left: size.width*0.85),
          child: Column(
            
            children: <Widget>[
              Container(
                 padding: EdgeInsets.all(8),
               // color: Colors.red,
                child: IconButton(
                  iconSize: 25,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SaldoDisponible() ));
                    }),
              )
            ],
          ),
        ), */

      ],
    );
  }

  Widget listaOpciones() {
    final size = MediaQuery.of(context).size;

  return Column(children: <Widget>[
     
      Padding(
        padding: const EdgeInsets.fromLTRB(20,185,10,16),
        child: Container(
          
          padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
         // margin: EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.attach_money,
                  size: 40,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Último Periodo Facturado',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 14),
                ),
                subtitle: Text(pattern.format(saldoDisponible), style: TextStyle(color: Color.fromRGBO(4, 32, 82, 1.0), fontSize: 21) ,),
             trailing:   Container(
              padding: EdgeInsets.all(8),
                 // color: Colors.red,
                    child: IconButton(
                       alignment: Alignment.topLeft,
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 30,

                          color: Colors.orange,
                        ),
                        onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => UltimoPeriodoFacturado() ));
                        })),
              ),
            ],
          ),
          width: size.width * 0.90,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
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
      ),
    ]);
  }

  Widget listaOpciones2() {
    final size = MediaQuery.of(context).size;

  return Column(children: <Widget>[
     
      Padding(
        padding: const EdgeInsets.fromLTRB(15,10,15,10),
        child: Container(
          
           padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
         // margin: EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.calendar_today,
                  size: 40,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Periodos anteriores',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 18),
                ),
             trailing:   Container(
              padding: EdgeInsets.all(8),
                 // color: Colors.red,
                    child: IconButton(
                       alignment: Alignment.center,
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 30,

                          color: Colors.orange,
                        ),
                        onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => PeriodosAnteriores() ));
                        })),
              ),
            ],
          ),
          width: size.width * 0.90,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
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
      ),
    ]);
  }

  Widget alertaStatus(){

    return VentanaEmergente(tituloText: 'ESTATUS DE FACTURACIÓN', 
    contenidoText: 'Hubo un problema con la petición de facturacion', 
    contenidoVinculo: 'Llamar a Soporte',
    onPressed: (){
      print('on presee');
    },
    color: Color.fromRGBO(253, 243, 245, 1), 
    icono: Icons.backspace, 
    color2: Color.fromRGBO(205, 90, 89, 1), 
    vinculo: true, 
    visibilidad: visibilityAlerta,
    onPressedClear: (){
      setState(() {
        
      });
      print('ooooo');
    visibilityAlerta=false;
    }
    );
  }

    Widget alertaStatusAproved(){

    return VentanaEmergente(tituloText: 'ESTATUS DE FACTURACIÓN', 
    contenidoText: 'La solicitud de facturación fue aprobada', 
    onPressed: (){},
    color: Color.fromRGBO(236, 249, 242, 1), 
    icono: Icons.check_circle_outline,
    color2: Color.fromRGBO(91, 199, 144, 1), 
    vinculo: false, 
    visibilidad: visibilityAlerta2,
    onPressedClear: (){
      setState(() {
        
      });
    visibilityAlerta2=false;

    }
    );
  }


/* Widget _cargarDetalles(){
/* 
  return FutureBuilder(
    future: provider.loadUnits(),
  
    builder: (BuildContext context, AsyncSnapshot<List<DetallesIngresosDto>> snapshot) {
    if(snapshot.hasData){

      return ListView.builder(
        itemCount: snapshot.data.length,
        itemBuilder: (context, i){

        }
        );
    }
    else{
     return Center(child: CircularProgressIndicator());
    }
    },
  ); */
} */

   


}
