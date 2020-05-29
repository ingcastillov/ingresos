import 'package:flutter/material.dart';
import 'package:ingresos/Commons/TituloEtiquetas.dart';
import 'package:ingresos/Commons/etiquetaInformativa.dart';
import 'package:intl/intl.dart';

import 'bonos_desglose.dart';

class BonosPage extends StatefulWidget {
  @override
  _BonosPageState createState() => _BonosPageState();
}

class _BonosPageState extends State<BonosPage> {
  final pattern = new NumberFormat("###,###,###.##");

  double vidaIndividual = 222000;
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
          'Bonos',
          style: TextStyle(color: Colors.blueGrey),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                _crearFondo(context),
                Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Bonos',
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
            segurosPersonales(),
            SizedBox(height: 10,),
            segurosPatrimoniales(),
             SizedBox(height: 10,),
            segurosPatrimonialesPYME(),
             SizedBox(height: 10,),
            grandesEmpresas(),
          ],
        ),
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

  Widget segurosPersonales() {

 
  return Column(
    children: <Widget>[
      TituloEtiquetas(tituloEtiqueta: 'Seguros Personales',
      weight: true,
      fontsize: 16,
      ),
       Divider(),
      EtiquetaInformativa(
       
        color: Colors.black,
        tituloEtiqueta: 'Vida Individual ', 
        montoEtiqueta: 222000, 
        height: 0.085, 
        width: 0.9,
        fontTitleSize: 16,
        onPressed: (){
              Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VidaIndividual(titulo: 'Vida Individual',)));
        },
        

        buttonRequired: true),
         Divider(),
           EtiquetaInformativa(
             
        color: Colors.black,
        tituloEtiqueta: 'Salud Individual', 
        montoEtiqueta: 222000, 
        height: 0.085, 
        width: 0.9,
        fontTitleSize: 16,
    onPressed: (){
              Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VidaIndividual(titulo: 'Salud Individual',)));
        },
        buttonRequired: true),
         Divider(),
    ],
  );
  }

  Widget segurosPatrimoniales() {
  
  return Column(
    children: <Widget>[
      TituloEtiquetas(tituloEtiqueta: 'Seguros Patrimoniales',
      weight: true,
      fontsize: 16,
      ),
       Divider(),
      EtiquetaInformativa(
        color: Colors.black,
        tituloEtiqueta: 'Autos Personales', 
        montoEtiqueta: 222000, 
        height: 0.085, 
        width: 0.9,
        fontTitleSize: 16,
            onPressed: (){
              Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VidaIndividual( titulo: 'Autos Personales',)));
        },
        

        buttonRequired: true),
         Divider(),
           EtiquetaInformativa(
        color: Colors.black,
        tituloEtiqueta: 'Daños Patrimoniales', 
        montoEtiqueta: 222000, 
        height: 0.085, 
        width: 0.9,
        fontTitleSize: 16,
   onPressed: (){
                   Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VidaIndividual( titulo: 'Daños Patrimoniales',)));
   },
        buttonRequired: true),
    ],
  );

  }

  Widget segurosPatrimonialesPYME() {
   return Column(
    children: <Widget>[
      TituloEtiquetas(tituloEtiqueta: 'PyMEs',
      weight: true,
      fontsize: 16,
      ),
       Divider(),
      EtiquetaInformativa(
        color: Colors.black,
        tituloEtiqueta: 'Vida', 
        montoEtiqueta: 222000, 
        height: 0.085, 
        width: 0.9,
        fontTitleSize: 16,
   onPressed: (){
                   Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VidaIndividual( titulo: 'Vida',)));
   },
        buttonRequired: true),
         Divider(),
           EtiquetaInformativa(
        color: Colors.black,
        tituloEtiqueta: 'Autos', 
        montoEtiqueta: 1200000, 
        height: 0.085, 
        width: 0.9,
        fontTitleSize: 16,
  onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VidaIndividual( titulo: 'Autos',)));
  },
        buttonRequired: true),
         Divider(),
    ],
  );
  }

    Widget grandesEmpresas() {
  return Column(
    children: <Widget>[
      TituloEtiquetas(tituloEtiqueta: 'Grandes Empresas',
      weight: true,
      fontsize: 16,
      ),
       Divider(),
      EtiquetaInformativa(
        color: Colors.black,
        tituloEtiqueta: 'Vida', 
        montoEtiqueta: 222000, 
        height: 0.085, 
        width: 0.9,
        fontTitleSize: 16,
   onPressed: (){
                   Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VidaIndividual( titulo: 'Vida',)));
   },
        buttonRequired: true),
         Divider(),
               EtiquetaInformativa(
        color: Colors.black,
        tituloEtiqueta: 'Daños', 
        montoEtiqueta: 222000, 
        height: 0.085, 
        width: 0.9,
        fontTitleSize: 16,
   onPressed: (){
                   Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VidaIndividual( titulo: 'Daños',)));
   },
        buttonRequired: true),
         Divider(),
    ],
  );
  }
}
