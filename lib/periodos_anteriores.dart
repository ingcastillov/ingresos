import 'package:flutter/material.dart';
import 'package:ingresos/Commons/TituloEtiquetas.dart';
import 'package:ingresos/Commons/etiquetaInformativa.dart';
import 'package:ingresos/Commons/graficalineal.dart';
import 'package:ingresos/saldo_facturado.dart';
import 'package:intl/intl.dart';
import 'chartprueba.dart';
import 'comparacion_periodos.dart';
import 'dart:math';

class PeriodosAnteriores extends StatefulWidget {
  final random = Random();

  @override
  _PeriodosAnteriores createState() => _PeriodosAnteriores();
}

class _PeriodosAnteriores extends State<PeriodosAnteriores> {

  String anio;
  double comisiones = 320000;

  double bonos = 800000;

  double otrosmovimientos = 222000;

  double impuestos = 1000000;

  int variable = 0;
  String mesTabla;
  String mesCantidad;

  final azulMarino = Color.fromRGBO(4, 54, 129, 1);

  var estiloTitulo = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black54,
    fontFamily: 'Digital',
    fontSize: 16,
  );
  var estiloLetraBlanca = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: 'Digital',
    fontSize: 16,
  );
  final pattern = new NumberFormat("###,###,###.##");
  bool selected = true;
  bool selected1 = false;
  bool selected2 = false;

  double saldoDisponible = 84692.87;

  var decored = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color.fromRGBO(4, 54, 129, 1),
    border: Border.all(
      color: Colors.white, //                   <--- border color
      width: 5.0,
    ),
  );

  var decored2 = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color.fromRGBO(168, 168, 168, 1),
    border: Border.all(
      color: Colors.white, //                   <--- border color
      width: 5.0,
    ),
  );

//VARIABLES PARA LOS MESES
  var indicadorMesSeleccionado = BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    color: Colors.orange,
  );
  bool eneSeleccionado = false;
  bool febSeleccionado = false;
  bool marSeleccionado = false;
  bool abrSeleccionado = false;
  bool maySeleccionado = false;
  bool junSeleccionado = false;
  bool julSeleccionado = false;
  bool agoSeleccionado = false;
  bool sepSeleccionado = false;
  bool octSeleccionado = false;
  bool novSeleccionado = false;
  bool dicSeleccionado = false;

  String fechaPrueba = '08/06/2019';

  final Color dark = const Color(0xff3b8c75);
  final Color normal = const Color(0xff64caad);
  final Color light = const Color(0xff73e8c9);

 /*  static const double barWidth = 22; */

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
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
          'Periodos Anteriores',
          style: TextStyle(color: Colors.blueGrey),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.multiline_chart,
                color: Colors.orange,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ComparacionPeriodos()));
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
        child: DefaultTabController(
          initialIndex: 0,
          length: 3,
          child: Column(
            children: <Widget>[
              Container(
                //  padding: EdgeInsets.all(16),
                //     width: 300,

                constraints: BoxConstraints.expand(height: 100),
                child: TabBar(

                    //  unselectedLabelColor: Colors.red,
                    //  indicator: decored,
                    //  indicatorSize: TabBarIndicatorSize.tab,
                    labelPadding: EdgeInsets.symmetric(vertical: 10),
                    onTap: (value) {
                      setState(() {});
                      if (value == 0) {
                        selected = true;
                        anio='2019';
                      } else {
                        selected = false;
                           anio='';
                      }

                      if (value == 1) {
                        selected1 = true;
                        anio='2018';
                      } else {
                        selected1 = false;
                        anio='';
                      }

                      if (value == 2) {
                        selected2 = true;
                        anio='2017';
                      } else {
                        selected2 = false;
                        anio='';
                      }
                    },
                    indicatorColor: Colors.white,
                    labelColor: Colors.blue,

                    //  isScrollable: true,
           
                    tabs: [
                      Container(
                        //color: Color.fromRGBO(4, 54, 129, 1),

                        alignment: Alignment.center,
                        constraints: BoxConstraints.expand(width: 130),

                        // color: Colors.red,
                        //  width: 200,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Tab(
                              child: Text(
                                "\t562,212\nTotal 2019",
                                style: TextStyle(
                                    color: selected == true
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ],
                        ),

                        decoration: selected == false ? decored2 : decored,
                      ),
                      Container(
                          decoration: selected1 == false ? decored2 : decored,
                          alignment: Alignment.center,
                          constraints: BoxConstraints.expand(width: 130),
                          // color: Colors.red,
                          //width: 900,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Tab(
                                child: Text(
                                  "\t362,212\nTotal 2018",
                                  style: TextStyle(
                                      color: selected1 == true
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ),
                            ],
                          )),
                      Container(
                          decoration: selected2 == false ? decored2 : decored,
                          alignment: Alignment.center,
                          constraints: BoxConstraints.expand(width: 130),
                          // color: Colors.red,
                          //width: 900,
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Tab(
                                child: Text(
                                  "\t262,212\nTotal 2017",
                                  style: TextStyle(
                                      color: selected2 == true
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ),
                            ],
                          )),
                    ]),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(children: [
                    ultimoAnio(),
                  penultimoAnio(),
                   antepenultimoAnio(),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget ultimoAnio() {
    return GraficaLineal(

        //CANTIDADES MOSTRADA EN TABLA DE GRAFICA POR MES
        eneTotal: 1200,
        febTotal: 1200,
        marTotal: 1200,
        abrTotal: 1200,
        mayTotal: 1200,
        junTotal: 1200,
        julTotal: 1200,
        agoTotal: 1200,
        sepTotal: 1200,
        octTotal: 1200,
        novTotal: 1200,
        dicTotal: 1200,

        //CONTENIDO DE LAS TABLAS POR MES
        eneContenido: mesEnero(),
        febContenido: mesFebrero(),
        marContenido: mesMarzo(),
        abrContenido: mesAbril(),
        mayContenido: mesMayo(),
        junContenido: mesJunio(),
        julContenido: mesJulio(),
        agoContenido: mesAgosto(),
        sepContenido: mesSeptiembre(),
        octContenido: mesOctubre(),
        novContenido: mesNoviembre(),
        dicContenido: mesDiciembre(),

        //VALORES DE LA GRAFICA
        gradle: 4,
        maxY: 10,
        eneY: 4,
        febY: 4,
        marY: 6,
        abrY: 3,
        mayY: 7,
        junY: 2,
        julY: 8,
        agoY: 2,
        sepY: 6,
        octY: 3,
        novY: 8,
        dicY: 3
        );
  }


    Widget penultimoAnio() {
    return GraficaLineal(

        //CANTIDADES MOSTRADA EN TABLA DE GRAFICA POR MES
        eneTotal: 1200,
        febTotal: 1200,
        marTotal: 1200,
        abrTotal: 1200,
        mayTotal: 1200,
        junTotal: 1200,
        julTotal: 1200,
        agoTotal: 1200,
        sepTotal: 1200,
        octTotal: 1200,
        novTotal: 1200,
        dicTotal: 1200,

        //CONTENIDO DE LAS TABLAS POR MES
        eneContenido: mesEnero(),
        febContenido: mesFebrero(),
        marContenido: mesMarzo(),
        abrContenido: mesAbril(),
        mayContenido: mesMayo(),
        junContenido: mesJunio(),
        julContenido: mesJulio(),
        agoContenido: mesAgosto(),
        sepContenido: mesSeptiembre(),
        octContenido: mesOctubre(),
        novContenido: mesNoviembre(),
        dicContenido: mesDiciembre(),

        //VALORES DE LA GRAFICA
        gradle: 4,
        maxY: 10,
        eneY: 4,
        febY: 4,
        marY: 6,
        abrY: 3,
        mayY: 7,
        junY: 2,
        julY: 8,
        agoY: 2,
        sepY: 6,
        octY: 3,
        novY: 8,
        dicY: 3
        );
  }


    Widget antepenultimoAnio() {
    return GraficaLineal(

        //CANTIDADES MOSTRADA EN TABLA DE GRAFICA POR MES
        eneTotal: 1200,
        febTotal: 1200,
        marTotal: 1200,
        abrTotal: 1200,
        mayTotal: 1200,
        junTotal: 1200,
        julTotal: 1200,
        agoTotal: 1200,
        sepTotal: 1200,
        octTotal: 1200,
        novTotal: 1200,
        dicTotal: 1200,

        //CONTENIDO DE LAS TABLAS POR MES
        eneContenido: mesEnero(),
        febContenido: mesFebrero(),
        marContenido: mesMarzo(),
        abrContenido: mesAbril(),
        mayContenido: mesMayo(),
        junContenido: mesJunio(),
        julContenido: mesJulio(),
        agoContenido: mesAgosto(),
        sepContenido: mesSeptiembre(),
        octContenido: mesOctubre(),
        novContenido: mesNoviembre(),
        dicContenido: mesDiciembre(),

        //VALORES DE LA GRAFICA
        gradle: 4,
        maxY: 10,
        eneY: 4,
        febY: 4,
        marY: 6,
        abrY: 3,
        mayY: 7,
        junY: 2,
        julY: 8,
        agoY: 2,
        sepY: 6,
        octY: 3,
        novY: 8,
        dicY: 3
        );
  }





  Widget mesEnero() {

    
    return  ListView(
      
 children:
     <Widget>[
        TituloEtiquetas(tituloEtiqueta: 'Detalles de Facturas en Enero'),
      selected ?  EtiquetaInformativa(
        color: Colors.black54,
            tituloEtiqueta: fechaPrueba,
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
         selected1 ?  EtiquetaInformativa(
           color: Colors.black54,
            tituloEtiqueta: '02/01/2019',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),

           selected2 ?  EtiquetaInformativa(
             color: Colors.black54,
            tituloEtiqueta: '02/01/2019',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
      ],  
    );
      
    


  

  }

  Widget mesFebrero() {
    return  ListView(
      
 children:
     <Widget>[
        TituloEtiquetas(tituloEtiqueta: 'Detalles de Facturas en Febrero'),
      selected ?  EtiquetaInformativa(
        color: Colors.black54,
            tituloEtiqueta: '19/09/2018',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PutAttention()));
            }) :  Container(),
         selected1 ?  EtiquetaInformativa(
           color: Colors.black54,
            tituloEtiqueta: '21/02/2018',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),

           selected2 ?  EtiquetaInformativa(
             color: Colors.black54,
            tituloEtiqueta: '21/02/2017',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
      ],  
    );
  }

  Widget mesMarzo() {
    return  ListView(
      
 children:
     <Widget>[
        TituloEtiquetas(tituloEtiqueta: 'Detalles de Facturas en Marzo'),
      selected ?  EtiquetaInformativa(
        color: Colors.black54,
            tituloEtiqueta: fechaPrueba,
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
         selected1 ?  EtiquetaInformativa(
           color: Colors.black54,
            tituloEtiqueta: '21/03/2018',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),

           selected2 ?  EtiquetaInformativa(
             color: Colors.black54,
            tituloEtiqueta: '21/03/2017',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
      ],  
    );
  }

  Widget mesAbril() {
    return  ListView(
      
 children:
     <Widget>[
        TituloEtiquetas(tituloEtiqueta: 'Detalles de Facturas en Abril'),
      selected ?  EtiquetaInformativa(
        color: Colors.black54,
            tituloEtiqueta: fechaPrueba,
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
         selected1 ?  EtiquetaInformativa(
           color: Colors.black54,
            tituloEtiqueta: '21/04/2018',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),

           selected2 ?  EtiquetaInformativa(
             color: Colors.black54,
            tituloEtiqueta: '21/04/2017',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
      ],  
    );
  }

  Widget mesMayo() {
    return  ListView(
      
 children:
     <Widget>[
        TituloEtiquetas(tituloEtiqueta: 'Detalles de Facturas en Mayo'),
      selected ?  EtiquetaInformativa(
        color: Colors.black54,
            tituloEtiqueta: fechaPrueba,
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
         selected1 ?  EtiquetaInformativa(
           color: Colors.black54,
            tituloEtiqueta: '21/05/2018',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),

           selected2 ?  EtiquetaInformativa(
             color: Colors.black54,
            tituloEtiqueta: '21/05/2017',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
      ],  
    );
  }

  Widget mesJunio() {
      return  ListView(
      
 children:
     <Widget>[
        TituloEtiquetas(tituloEtiqueta: 'Detalles de Facturas en Junio'),
      selected ?  EtiquetaInformativa(
        color: Colors.black54,
            tituloEtiqueta: fechaPrueba,
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
         selected1 ?  EtiquetaInformativa(
           color: Colors.black54,
            tituloEtiqueta: '21/06/2018',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),

           selected2 ?  EtiquetaInformativa(
             color: Colors.black54,
            tituloEtiqueta: '21/06/2017',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
      ],  
    );
  }

  Widget mesJulio() {
    return  ListView(
 children:
     <Widget>[
        TituloEtiquetas(tituloEtiqueta: 'Detalles de Facturas en Julio'),
               //ULTIMO AÑO
      selected ?  EtiquetaInformativa(
        color: Colors.black54,
            tituloEtiqueta: fechaPrueba,
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
             //PENULTIMO AÑO
         selected1 ?  EtiquetaInformativa(
           color: Colors.black54,
            tituloEtiqueta: '21/07/2018',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
             //ANTEPENULTIMO AÑO
           selected2 ?  EtiquetaInformativa(
             color: Colors.black54,
            tituloEtiqueta: '21/07/2017',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
      ],  
    );
  }

  Widget mesAgosto() {
    return  ListView(
 children:
     <Widget>[
        TituloEtiquetas(tituloEtiqueta: 'Detalles de Facturas en Agosto'),
               //ULTIMO AÑO
      selected ?  EtiquetaInformativa(
        color: Colors.black54,
            tituloEtiqueta: fechaPrueba,
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
             //PENULTIMO AÑO
         selected1 ?  EtiquetaInformativa(
           color: Colors.black54,
            tituloEtiqueta: '21/08/2018',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
             //ANTEPENULTIMO AÑO
           selected2 ?  EtiquetaInformativa(
             color: Colors.black54,
            tituloEtiqueta: '21/08/2017',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
      ],  
    );
  }

  Widget mesSeptiembre() {
    return  ListView(
 children:
     <Widget>[
        TituloEtiquetas(tituloEtiqueta: 'Detalles de Facturas en Septiembre'),
               //ULTIMO AÑO
      selected ?  EtiquetaInformativa(
        color: Colors.black54,
            tituloEtiqueta: fechaPrueba,
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
       
             //PENULTIMO AÑO
         selected1 ?  EtiquetaInformativa(
           color: Colors.black54,
            tituloEtiqueta: '21/09/2018',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
             //ANTEPENULTIMO AÑO
           selected2 ?  EtiquetaInformativa(
             color: Colors.black54,
            tituloEtiqueta: '21/09/2017',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
      ],  
    );
  }

  Widget mesOctubre() {
    return  ListView(
 children:
     <Widget>[
        TituloEtiquetas(tituloEtiqueta: 'Detalles de Facturas en Octubre'),
               //ULTIMO AÑO
      selected ?  EtiquetaInformativa(
        color: Colors.black54,
            tituloEtiqueta: fechaPrueba,
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
       
             //PENULTIMO AÑO
         selected1 ?  EtiquetaInformativa(
           color: Colors.black54,
            tituloEtiqueta: '21/10/2018',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
             //ANTEPENULTIMO AÑO
           selected2 ?  EtiquetaInformativa(
             color: Colors.black54,
            tituloEtiqueta: '21/10/2017',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
      ],  
    );
  }

  Widget mesNoviembre() {
      return  ListView(
 children:
     <Widget>[
        TituloEtiquetas(tituloEtiqueta: 'Detalles de Facturas en Noviembre'),
               //ULTIMO AÑO
      selected ?  EtiquetaInformativa(
        color: Colors.black54,
            tituloEtiqueta: fechaPrueba,
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
       
             //PENULTIMO AÑO
         selected1 ?  EtiquetaInformativa(
           color: Colors.black54,
            tituloEtiqueta: '21/11/2018',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
             //ANTEPENULTIMO AÑO
           selected2 ?  EtiquetaInformativa(
             color: Colors.black54,
            tituloEtiqueta: '21/11/2017',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
      ],  
    );
  }

  Widget mesDiciembre() {
    return  ListView(
 children:
     <Widget>[
        TituloEtiquetas(tituloEtiqueta: 'Detalles de Facturas en Diciembre'),
               //ULTIMO AÑO
      selected ?  EtiquetaInformativa(
        color: Colors.black54,
            tituloEtiqueta: fechaPrueba,
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
       
             //PENULTIMO AÑO
         selected1 ?  EtiquetaInformativa(
           color: Colors.black54,
            tituloEtiqueta: '21/12/2018',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
             //ANTEPENULTIMO AÑO
           selected2 ?  EtiquetaInformativa(
             color: Colors.black54,
            tituloEtiqueta: '21/12/2017',
            montoEtiqueta: 5000,
            height: 0.088,
            width: 12.0,
            fontTitleSize: 20,
            buttonRequired: true,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaldoFacturado(fechaPrueba)));
            }) :  Container(),
      ],  
    );
  }

}
