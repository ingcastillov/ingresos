import 'package:flutter/material.dart';
import 'package:ingresos/Commons/GraficaBarras.dart';
import 'package:ingresos/Commons/GraficaLinealTriple.dart';
import 'package:ingresos/Commons/TablaAcumulado.dart';
import 'package:ingresos/Commons/TablaMensualPorcentajes.dart';
import 'package:ingresos/Commons/TituloEtiquetas.dart';
import 'package:intl/intl.dart';
import 'dart:math';

import '../filtro_periodos.dart';
import '../periodos_anteriores.dart';


class OtrosVidaFiltered extends StatefulWidget {
  
 final random = Random();



 

  @override
  _OtrosVidaFiltered createState() => _OtrosVidaFiltered();
}

class _OtrosVidaFiltered extends State<OtrosVidaFiltered> {

  String mesTabla;
   
  String fechaPrueba = '08/03/2019';
  double comisiones = 320000;

  double bonos = 800000;

  double otrosmovimientos = 222000;

  double impuestos = 1000000;

  final pattern = new NumberFormat("###,###,###.##");

  double saldoDisponible = 84692.87;


    final Color dark = const Color(0xff3b8c75);
  final Color normal = const Color(0xff64caad);
  final Color light = const Color(0xff73e8c9);

  //static const double barWidth = 22;

  bool selected= true;
  bool selected1=false ;
  bool selected2= false;

String concepto;
String ramo;


  @override
  void initState() {
    super.initState();

  
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
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => PeriodosAnteriores()),
  );
            }),
        centerTitle: true,
        title: Text(
          'Comparacion de Periodos',
          style: TextStyle(color: Colors.blueGrey),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.filter_list,
                color: Colors.orange,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FilterPeriodos()));
              })
        ],
      ),
      body: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Column(

          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(

               onTap: (value){
                if(value==0){
                  setState(() {
                    
                  });
                  selected=true;
                }
                else{
                    setState(() {
                    
                  });
                   selected=false;
                }
                  if(value==1){
                      setState(() {
                    
                  });
                  selected1=true;
                }
                else{
                    setState(() {
                    
                  });
                   selected1=false;
                }
                  if(value==2){
                      setState(() {
                    
                  });
                  selected2=true;
                }
                else{
                    setState(() {
                    
                  });
                   selected2=false;
                }
               },
                
                isScrollable: true, 
                tabs: [
                Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints.expand(width: 100),
                    // color: Colors.red,
                    //width: 900,
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Tab(
                          text: "Año",
                        ),
                      ],
                    )),
                Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints.expand(width: 100),
                    // color: Colors.red,
                    //width: 900,
                    child: Row(
 mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
               
                        Tab(

                          text: "Mes",
                        ),
                      ],
                    )),
                Container(
                    alignment: Alignment.center,
                    constraints: BoxConstraints.expand(width: 100),
                    // color: Colors.red,
                    //width: 900,
                    child: Row(
                     // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                
                        Tab(
                          text: "Acumulado",
                        ),
                      ],
                    )),
         

              ]),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  
                  children: [
                 _anualPage(),
                _periodoMes(),
                _acumuladoPage(),
               
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget _anualPage() {
   
return  Padding(
  padding: const EdgeInsets.all(16.0),
  child:   Column(
    children: <Widget>[
  
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            
            alignment: Alignment.topLeft,
            child: Text('Detalle Anual de Ingresos', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
          ),
        ),
   
//GRAFICA COMISIONES Y VIDA DE LO CONTRARIO TRAR GRAFICA CON DATOS GENERALES
  GraficaBarras(
        gradle: 2, 
        maxY: 10, 
        ultimoY:  6, 
        penultimoY: 3, 
        antepenultimoY: 7
        ),
   
 
//TABLA COMISIONES Y VIDA DE LO CONTRARIO TRAR GRAFICA CON DATOS GENERALES
   TablaMensual(
        montoAnual: true,
        montoActual: 2000, 
        montoPenultimo: 4444, 
        montoAntepenultimo: 2222, 
        porcentajeActual: 99, 
        porcentajePenultimo: 99, 
        porcentajeAntepenultimo: 99, 
        incremento: true, 
        incremento2: true, 
        incremento3: false
        )
    ],
  ),
);
      

  

}





  Widget _periodoMes() {


return   GraficaLinealTriple(

  acumulado: false,
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

        enePorcentaje: 120,
        febPorcentaje: 120,
        marPorcentaje: 120,
        abrPorcentaje: 120,
        mayPorcentaje: 120,
        junPorcentaje: 120,
        julPorcentaje: 120,
        agoPorcentaje: 120,
        sepPorcentaje: 120,
        octPorcentaje: 120,
        novPorcentaje: 120,
        dicPorcentaje: 120,

        enePorcentaje2: 120,
        febPorcentaje2: 120,
        marPorcentaje2: 120,
        abrPorcentaje2: 120,
        mayPorcentaje2: 120,
        junPorcentaje2: 120,
        julPorcentaje2: 120,
        agoPorcentaje2: 120,
        sepPorcentaje2: 120,
        octPorcentaje2: 120,
        novPorcentaje2: 120,
        dicPorcentaje2: 120,

        enePorcentaje3: 120,
        febPorcentaje3: 120,
        marPorcentaje3: 120,
        abrPorcentaje3: 120,
        mayPorcentaje3: 120,
        junPorcentaje3: 120,
        julPorcentaje3: 120,
        agoPorcentaje3: 120,
        sepPorcentaje3: 120,
        octPorcentaje3: 120,
        novPorcentaje3: 120,
        dicPorcentaje3: 120,

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
        dicY: 3,

        eneY2: 2,
        febY2: 3,
        marY2: 2,
        abrY2: 3,
        mayY2: 2,
        junY2: 3,
        julY2: 5,
        agoY2: 3,
        sepY2: 2,
        octY2: 3,
        novY2: 2,
        dicY2: 3,

        eneY3: 4,
        febY3: 5,
        marY3: 4,
        abrY3: 5,
        mayY3: 4,
        junY3: 5,
        julY3: 4,
        agoY3: 5,
        sepY3: 4,
        octY3: 2,
        novY3: 4,
        dicY3: 2



);
   // return CircularProgressIndicator();   
       }



 Widget _acumuladoPage(){
 return GraficaLinealTriple(
 //CANTIDADES MOSTRADA EN TABLA DE GRAFICA POR MES
  
 acumulado: true,
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

        enePorcentaje: 120,
        febPorcentaje: 120,
        marPorcentaje: 120,
        abrPorcentaje: 120,
        mayPorcentaje: 120,
        junPorcentaje: 120,
        julPorcentaje: 120,
        agoPorcentaje: 120,
        sepPorcentaje: 120,
        octPorcentaje: 120,
        novPorcentaje: 120,
        dicPorcentaje: 120,

        enePorcentaje2: 120,
        febPorcentaje2: 120,
        marPorcentaje2: 120,
        abrPorcentaje2: 120,
        mayPorcentaje2: 120,
        junPorcentaje2: 120,
        julPorcentaje2: 120,
        agoPorcentaje2: 120,
        sepPorcentaje2: 120,
        octPorcentaje2: 120,
        novPorcentaje2: 120,
        dicPorcentaje2: 120,

        enePorcentaje3: 120,
        febPorcentaje3: 120,
        marPorcentaje3: 120,
        abrPorcentaje3: 120,
        mayPorcentaje3: 120,
        junPorcentaje3: 120,
        julPorcentaje3: 120,
        agoPorcentaje3: 120,
        sepPorcentaje3: 120,
        octPorcentaje3: 120,
        novPorcentaje3: 120,
        dicPorcentaje3: 120,

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
        eneY: 3,
        febY: 7,
        marY: 6,
        abrY: 4,
        mayY: 3,
        junY: 8,
        julY: 0,
        agoY: 3,
        sepY: 5,
        octY: 3,
        novY: 2,
        dicY: 4,

        eneY2: 7,
        febY2: 5,
        marY2: 2,
        abrY2: 7,
        mayY2: 3,
        junY2: 5,
        julY2: 9,
        agoY2: 3,
        sepY2: 2,
        octY2: 6,
        novY2: 7,
        dicY2: 8,

        eneY3: 4,
        febY3: 5,
        marY3: 4,
        abrY3: 5,
        mayY3: 4,
        junY3: 5,
        julY3: 4,
        agoY3: 5,
        sepY3: 4,
        octY3: 2,
        novY3: 4,
        dicY3: 2





);
 }
  Widget mesEnero() {
    return ListView(
      children: 
      <Widget>[
   
    selected1 ? TituloEtiquetas(tituloEtiqueta: 'Enero',
        fontsize: 25,
        ) :  TituloEtiquetas(tituloEtiqueta: 'Acumulado Enero',
        fontsize: 25,
        ),
     
   selected1 ?  TablaMensual(
     montoAnual: false,
     montoActual: 2000, 

     incremento: true,
     incremento2: false,
     incremento3: true,
     montoPenultimo: 1000, 
     montoAntepenultimo: 3000, 
     porcentajeActual: 4, 
     porcentajePenultimo: 5, 
     porcentajeAntepenultimo: 6) :
     TablaAcumulado(
       montoActual: 2000,
       montoAntepenultimo: 2000,
       montoPenultimo: 2000,
       periodo: 'Enero',
       periodo2: 'Enero',
       periodo3: 'Enero',
     ),
      ],
    );
  }

  Widget mesFebrero() {
     return ListView(
      children: 
      <Widget>[
   
    selected1 ? TituloEtiquetas(tituloEtiqueta: 'Febrero',
        fontsize: 25,
        ) :  TituloEtiquetas(tituloEtiqueta: 'Acumulado Febrero',
        fontsize: 25,
        ),
     
   selected1 ?  TablaMensual(
     montoAnual: false,
     montoActual: 2000, 
   incremento: true,
     incremento2: false,
     incremento3: true,
     montoPenultimo: 1000, 
     montoAntepenultimo: 3000, 
     porcentajeActual: 4, 
     porcentajePenultimo: 5, 
     porcentajeAntepenultimo: 6) :
     TablaAcumulado(
       montoActual: 2000,
       montoAntepenultimo: 2000,
       montoPenultimo: 2000,
       periodo: 'Enero - Febrero',
       periodo2: 'Enero - Febrero',
       periodo3: 'Enero - Febrero',
     ),
      ],
    );
  }

  Widget mesMarzo() {
     return ListView(
      children: 
      <Widget>[
   
    selected1 ? TituloEtiquetas(tituloEtiqueta: 'Marzo',
        fontsize: 25,
        ) :  TituloEtiquetas(tituloEtiqueta: 'Acumulado Marzo',
        fontsize: 25,
        ),
     
   selected1 ?  TablaMensual(montoActual: 2000, 
   incremento: true,
     incremento2: false,
     incremento3: true,
     montoAnual: false,
     montoPenultimo: 1000, 
     montoAntepenultimo: 3000, 
     porcentajeActual: 4, 
     porcentajePenultimo: 5, 
     porcentajeAntepenultimo: 6) :
     TablaAcumulado(
       montoActual: 2000,
       montoAntepenultimo: 2000,
       montoPenultimo: 2000,
       periodo: 'Enero - Marzo',
       periodo2: 'Enero - Marzo',
       periodo3: 'Enero - Marzo',
     ),
      ],
    );
  }

  Widget mesAbril() {
    return ListView(
      children: 
      <Widget>[
   
    selected1 ? TituloEtiquetas(tituloEtiqueta: 'Abril',
        fontsize: 25,
        ) :  TituloEtiquetas(tituloEtiqueta: 'Acumulado Abril',
        fontsize: 25,
        ),
     
   selected1 ?  TablaMensual(montoActual: 2000, 
   incremento: true,
     incremento2: false,
     incremento3: true,
     montoAnual: false,
     montoPenultimo: 1000, 
     montoAntepenultimo: 3000, 
     porcentajeActual: 4, 
     porcentajePenultimo: 5, 
     porcentajeAntepenultimo: 6) :
     TablaAcumulado(
       montoActual: 2000,
       montoAntepenultimo: 2000,
       montoPenultimo: 2000,
       periodo: 'Enero - Abril',
       periodo2: 'Enero - Abril',
       periodo3: 'Enero - Abril',
     ),
      ],
    );
  }

  Widget mesMayo() {
     return ListView(
      children: 
      <Widget>[
   
    selected1 ? TituloEtiquetas(tituloEtiqueta: 'Mayo',
        fontsize: 25,
        ) :  TituloEtiquetas(tituloEtiqueta: 'Acumulado Mayo',
        fontsize: 25,
        ),
     
   selected1 ?  TablaMensual(montoActual: 2000, 
   incremento: true,
     incremento2: false,
     incremento3: true,
     montoAnual: false,
     montoPenultimo: 1000, 
     montoAntepenultimo: 3000, 
     porcentajeActual: 4, 
     porcentajePenultimo: 5, 
     porcentajeAntepenultimo: 6) :
     TablaAcumulado(
       montoActual: 2000,
       montoAntepenultimo: 2000,
       montoPenultimo: 2000,
       periodo: 'Enero - Mayo',
       periodo2: 'Enero - Mayo',
       periodo3: 'Enero - Mayo',
     ),
      ],
    );
  }

  Widget mesJunio() {
      return ListView(
      children: 
      <Widget>[
   
    selected1 ? TituloEtiquetas(tituloEtiqueta: 'Junio',
        fontsize: 25,
        ) :  TituloEtiquetas(tituloEtiqueta: 'Acumulado Junio',
        fontsize: 25,
        ),
     
   selected1 ?  TablaMensual(montoActual: 2000, 
   incremento: true,
     incremento2: false,
     incremento3: true,
     montoPenultimo: 1000, 
     montoAnual: false,
     montoAntepenultimo: 3000, 
     porcentajeActual: 4, 
     porcentajePenultimo: 5, 
     porcentajeAntepenultimo: 6) :
     TablaAcumulado(
       montoActual: 2000,
       montoAntepenultimo: 2000,
       montoPenultimo: 2000,
       periodo: 'Enero - Junio',
       periodo2: 'Enero - Junio',
       periodo3: 'Enero - Junio',
     ),
      ],
    );
  }

  Widget mesJulio() {
    return ListView(
      children: 
      <Widget>[
   
    selected1 ? TituloEtiquetas(tituloEtiqueta: 'Julio',
        fontsize: 25,
        ) :  TituloEtiquetas(tituloEtiqueta: 'Acumulado Julio',
        fontsize: 25,
        ),
     
   selected1 ?  TablaMensual(montoActual: 2000, 
   incremento: true,
     incremento2: false,
     incremento3: true,
     montoPenultimo: 1000, 
     montoAnual: false,
     montoAntepenultimo: 3000, 
     porcentajeActual: 4, 
     porcentajePenultimo: 5, 
     porcentajeAntepenultimo: 6) :
     TablaAcumulado(
       montoActual: 2000,
       montoAntepenultimo: 2000,
       montoPenultimo: 2000,
       periodo: 'Enero - Julio',
       periodo2: 'Enero - Julio',
       periodo3: 'Enero - Julio',
     ),
      ],
    );
  }

  Widget mesAgosto() {
    return ListView(
      children: 
      <Widget>[
   
    selected1 ? TituloEtiquetas(tituloEtiqueta: 'Agosto',
        fontsize: 25,
        ) :  TituloEtiquetas(tituloEtiqueta: 'Acumulado Agosto',
        fontsize: 25,
        ),
     
   selected1 ?  TablaMensual(montoActual: 2000, 
   incremento: true,
     incremento2: false,
     incremento3: true,
     montoPenultimo: 1000, 
     montoAnual: false,
     montoAntepenultimo: 3000, 
     porcentajeActual: 4, 
     porcentajePenultimo: 5, 
     porcentajeAntepenultimo: 6) :
     TablaAcumulado(
       montoActual: 2000,
       montoAntepenultimo: 2000,
       montoPenultimo: 2000,
       periodo: 'Enero - Agosto',
       periodo2: 'Enero - Agosto',
       periodo3: 'Enero - Agosto',
     ),
      ],
    );
  }

  Widget mesSeptiembre() {
    return ListView(
      children: 
      <Widget>[
   
    selected1 ? TituloEtiquetas(tituloEtiqueta: 'Septiembre',
        fontsize: 25,
        ) :  TituloEtiquetas(tituloEtiqueta: 'Acumulado Septiembre',
        fontsize: 25,
        ),
     
   selected1 ?  TablaMensual(montoActual: 2000, 
   incremento: true,
     incremento2: false,
     incremento3: true,
     montoPenultimo: 1000,
     montoAnual: false, 
     montoAntepenultimo: 3000, 
     porcentajeActual: 4, 
     porcentajePenultimo: 5, 
     porcentajeAntepenultimo: 6) :
     TablaAcumulado(
       montoActual: 2000,
       montoAntepenultimo: 2000,
       montoPenultimo: 2000,
       periodo: 'Enero - Septiembre',
       periodo2: 'Enero - Septiembre',
       periodo3: 'Enero - Septiembre',
     ),
      ],
    );
  }

  Widget mesOctubre() {
     return ListView(
      children: 
      <Widget>[
   
    selected1 ? TituloEtiquetas(tituloEtiqueta: 'Octubre',
        fontsize: 25,
        ) :  TituloEtiquetas(tituloEtiqueta: 'Acumulado Octubre',
        fontsize: 25,
        ),
     
   selected1 ?  TablaMensual(montoActual: 2000, 
   incremento: true,
     incremento2: false,
     incremento3: true,
     montoPenultimo: 1000, 
     montoAnual: false,
     montoAntepenultimo: 3000, 
     porcentajeActual: 4, 
     porcentajePenultimo: 5, 
     porcentajeAntepenultimo: 6) :
     TablaAcumulado(
       montoActual: 2000,
       montoAntepenultimo: 2000,
       montoPenultimo: 2000,
       periodo: 'Enero - Octubre',
       periodo2: 'Enero - Octubre',
       periodo3: 'Enero - Octubre',
     ),
      ],
    );
  }

  Widget mesNoviembre() {
    return ListView(
      children: 
      <Widget>[
   
    selected1 ? TituloEtiquetas(tituloEtiqueta: 'Noviembre',
        fontsize: 25,
        ) :  TituloEtiquetas(tituloEtiqueta: 'Acumulado Noviembre',
        fontsize: 25,
        ),
     
   selected1 ?  TablaMensual(montoActual: 2000, 
   incremento: true,
     incremento2: false,
     incremento3: true,
     montoPenultimo: 1000, 
     montoAnual: false,
     montoAntepenultimo: 3000, 
     porcentajeActual: 4, 
     porcentajePenultimo: 5, 
     porcentajeAntepenultimo: 6) :
     TablaAcumulado(
       montoActual: 2000,
       montoAntepenultimo: 2000,
       montoPenultimo: 2000,
       periodo: 'Enero - Noviembre',
       periodo2: 'Enero - Noviembre',
       periodo3: 'Enero - Noviembre',
     ),
      ],
    );
  }

  Widget mesDiciembre() {
     return ListView(
      children: 
      <Widget>[
   
    selected1 ? TituloEtiquetas(tituloEtiqueta: 'Diciembre',
        fontsize: 25,
        ) :  TituloEtiquetas(tituloEtiqueta: 'Acumulado Diciembre',
        fontsize: 25,
        ),
     
   selected1 ?  TablaMensual(montoActual: 2000, 
     incremento: true,
     incremento2: true,
     incremento3: true,
     montoAnual: false,
     montoPenultimo: 1000, 
     montoAntepenultimo: 3000, 
     porcentajeActual: 4, 
     porcentajePenultimo: 5, 
     porcentajeAntepenultimo: 6) :
     TablaAcumulado(
       montoActual: 2000,
       montoAntepenultimo: 2000,
       montoPenultimo: 2000,
       periodo: 'Enero - Diciembre',
       periodo2: 'Enero - Diciembre',
       periodo3: 'Enero - Diciembre',
     ),
      ],
    );
  }
       }



  
 
