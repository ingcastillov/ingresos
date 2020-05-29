import 'package:flutter/material.dart';
import 'package:ingresos/Commons/TituloEtiquetas.dart';
import 'package:ingresos/Commons/etiquetaInformativa.dart';
import 'package:ingresos/Commons/ventanaEmergente.dart';
import 'package:intl/intl.dart';

class VidaIndividual extends StatefulWidget {

  final String titulo;
  VidaIndividual({@required this.titulo});
  @override
  _VidaIndividualState createState() => _VidaIndividualState(titulo);
}

class _VidaIndividualState extends State<VidaIndividual> {
  String titulo;

  _VidaIndividualState(String titulo);

  List<BonosVidaIndividual> bonos;
  List<BonosVidaIndividual> bonosProductividad;
  List<BonosVidaIndividual> bonosRenovacion;
  ScrollController _controller;
  bool visible =false;

  final pattern = new NumberFormat("###,###,###.##");

  bool productividad=false;
  bool renovacion=false;
  
  double vidaIndividual = 222000;
  

 @override
  void initState() { 
    super.initState();
    bonos = BonosVidaIndividual.getBonos();
    bonosProductividad = BonosVidaIndividual.getBonos().where((i) => i.tipo.contains('productividad')).toList();
    bonosRenovacion = BonosVidaIndividual.getBonos().where((i) => i.tipo.contains('renovación')).toList();
    if(bonosProductividad!=null){
      productividad=true;

    }
       if(bonosRenovacion!=null){
      renovacion=true;
      
    }
    _controller = ScrollController();
  _controller.addListener(_scrollListener);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
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
          widget.titulo,
          style: TextStyle(color: Colors.blueGrey),
        ),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                _crearFondo(context),
                Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        widget.titulo,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(''),
                      Text('\u002420,302.50',
                          style: TextStyle(color: Colors.white, fontSize: 32)),
                      Text(''),
                      Text('Del 14/10/19 al 16/10/19',
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                    ],
                  ),
                ),
              ],
            ),
            bonosPR(),
            bonosAviso(),
          
      
        
          ],
        ),
      
    );
  }

  Widget _crearFondo(context) {
    final size = MediaQuery.of(context).size;
    final colorFondo = Container(
      height: size.height * 0.20,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
        Color.fromRGBO(19, 64, 155, 1.0),
        Color.fromRGBO(19, 64, 155, 1.0),
        Color.fromRGBO(19, 64, 155, 1.0),
      ])),
    );

    return Stack(
      children: <Widget>[
        colorFondo,
        Container(
          //  padding: EdgeInsets.only(top:50 , left: 20),
          child: Column(
            children: <Widget>[
              SizedBox(),
            ],
          ),
        ),
        Container(
          // padding: EdgeInsets.only(top:10 , left: 20),
          child: Column(
            children: <Widget>[
              SizedBox(),
            ],
          ),
        ),
      ],
    );
  }

  Widget bonosPR() {
return
   
  new Expanded(
    
     child: 
    productividad ?  NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
    if (scrollInfo.metrics.pixels ==
        scrollInfo.metrics.maxScrollExtent) {
     bonosAviso();
    }
    return false;
  },
      child: ListView.builder(
         controller: _controller,
       // physics: NeverScrollableScrollPhysics(),
             padding: EdgeInsets.only(bottom: 0),
       //  physics: NeverScrollableScrollPhysics(),
             itemCount: bonos.length,
            itemBuilder: (context, index){
            //  final bono= bonos[index];
            
             return Column(
                children: <Widget>[
         bonos[index].tipo=='productividad' ?  TituloEtiquetas(tituloEtiqueta: 'Bono de productividad') : TituloEtiquetas(tituloEtiqueta: 'Bono de renovación'),
                  Divider(),
                  EtiquetaInformativa(
                  tituloEtiqueta: bonos[index].bono,
                  montoEtiqueta: bonos[index].montobono, 
                  subtituloEtiqueta: bonos[index].nserie,
                  height: 0.085, 
                  width: 0.9, 
                  fontTitleSize: 16, 
                  buttonRequired: false, 
                  color: Colors.black),
                  Divider(),
                  EtiquetaInformativa(
                  tituloEtiqueta: bonos[index].bono2,
                  montoEtiqueta: bonos[index].montobono2, 
                  subtituloEtiqueta: bonos[index].nserie2,
                  height: 0.085, 
                  width: 0.9, 
                  fontTitleSize: 16, 
                  buttonRequired: false, 
                  color: Colors.black),


                ],
              );

            

      
 
            }
           
           
           ),
    ) : 
         Container(
        
         ),





    
       
     );


  }

    Widget bonosAviso() {
  return VentanaEmergente(tituloText: 'MÁS INFORMACIÓN', 
  visibilidad: visible,
  contenidoText: 'Si quieres consultar más información', 
  color: Color.fromRGBO(209, 241, 255, 1), 
  color2: Color.fromRGBO(46, 123, 200, 1), 
  icono: Icons.info,
  vinculo: true,
  contenidoVinculo: 'ir a Bonos',
  onPressedClear: (){
    setState(() {
      
    });
    visible=false;
  },
  );

  }


/*     Widget bonosR() {
return
   
  new Expanded(
    flex: 4,
     child: ListView.builder(

      //  physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
       itemCount: bonosRenovacion.length,
      itemBuilder: (context, index){
      //  final bono= bonos[index];
      
       return Column(
          children: <Widget>[
            TituloEtiquetas(tituloEtiqueta: 'Bono de renovación'),
            EtiquetaInformativa(
            tituloEtiqueta: bonosProductividad[index].bono,
            montoEtiqueta: bonosProductividad[index].montobono, 
            subtituloEtiqueta: bonosProductividad[index].nserie,
            height: 0.088, 
            width: 0.9, 
            fontTitleSize: 16, 
            buttonRequired: false, 
            color: Colors.black),
            EtiquetaInformativa(
            tituloEtiqueta: bonosProductividad[index].bono2,
            montoEtiqueta: bonosProductividad[index].montobono2, 
            subtituloEtiqueta: bonosProductividad[index].nserie2,
            height: 0.088, 
            width: 0.9, 
            fontTitleSize: 16, 
            buttonRequired: false, 
            color: Colors.black),
          ],
        );

      

    
 
      }
     
     
     ),
   );


  }  */

_scrollListener() {
  new Future.delayed( Duration(seconds: 2), () {
  if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
       visible=true;
      });
    }
});
  
/*     if (_controller.offset <= _controller.position.minScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
    visible=true;
      });
    } */
  }


}


 class BonosVidaIndividual{
String tipo;
String bono;
String nserie;
String bono2;
String nserie2;
double montobono;
double montobono2;


BonosVidaIndividual({this.tipo, this.bono, this.nserie, this.bono2, this.nserie2, this.montobono, this.montobono2});

static List<BonosVidaIndividual> getBonos(){
  return <BonosVidaIndividual>[
   BonosVidaIndividual(tipo: 'productividad', bono: 'Autos Personales',  nserie: '234234', bono2: 'Daños Patrimoniales',  nserie2: '454323', montobono: 150000, montobono2: 25000),
    BonosVidaIndividual(tipo: 'renovación', bono: 'Automatico',  nserie: '3213123', bono2: 'Aclaracion',  nserie2: '213123', montobono: 123123, montobono2: 132132),
       BonosVidaIndividual(tipo: 'productividad', bono: 'Autos Personales',  nserie: '234234', bono2: 'Daños Patrimoniales',  nserie2: '454323', montobono: 150000, montobono2: 25000),
    BonosVidaIndividual(tipo: 'renovación', bono: 'Automatico',  nserie: '234234', bono2: 'Aclaracion',  nserie2: '423423', montobono: 20000, montobono2: 13000),
       BonosVidaIndividual(tipo: 'productividad', bono: 'Autos Personales',  nserie: '234234', bono2: 'Daños Patrimoniales',  nserie2: '454323', montobono: 150000, montobono2: 25000),
    BonosVidaIndividual(tipo: 'renovación', bono: 'Automatico',  nserie: '234234', bono2: 'Aclaracion',  nserie2: '423423', montobono: 20000, montobono2: 13000),



  ];
}


} 
