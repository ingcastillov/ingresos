import 'package:ingresos/Commons/BotonNaranja.dart';
import 'package:ingresos/Commons/EtiquetaSaldos.dart';
import 'package:ingresos/Commons/FondoAzul.dart';
import 'package:ingresos/Commons/GraficaCircular.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import 'bonos_page.dart';
import 'comisiones_page.dart';
import 'comprobante.dart';
import 'otros_movimientos.dart';




class UltimoPeriodoFacturado extends StatefulWidget {

  
  @override
  _UltimoPeriodoFacturadoState createState() => _UltimoPeriodoFacturadoState();
}

class _UltimoPeriodoFacturadoState extends State<UltimoPeriodoFacturado> {



  double comisiones = 320000;

  double bonos = 300000;

  double otrosmovimientos = 222000;

  double impuestos = 1000000;

  final pattern = new NumberFormat("###,###,###.##");

  double saldoDisponible = 84692.87;

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
          'Último Periodo Facturado',
          style: TextStyle(color: Colors.blueGrey),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
           Stack(
              children: <Widget>[
                _crearFondo(context),
                Container(
                    padding: EdgeInsets.only(top: 20),
                    child: _graficaCircular(context)),
              ],
            ),
           SizedBox(height: 10,),
            bannerComisiones(),
           SizedBox(height: 10,),
            bannerBonos(), 
           SizedBox(height: 10,),
            bannerOtrosMovimientos(),
          SizedBox(height: 25,),
            buttonFacturacion(),
          ],
        ),
      ),
    );
  }

  Widget _crearFondo(context) {
    return FondoAzul();
  }

  Widget _graficaCircular(context) {
    return GraficaCircular(
      tituloGrafica: 'Saldo facturado',
      saldoDisponible: saldoDisponible,
      comisionesG: comisiones,
      bonosG: bonos,
      otrosmovimientosG: otrosmovimientos,
      fecha: '15/04/2020',
     
    );
  }

  Widget bannerComisiones() {
    return EtiquetaSaldo(
        tituloEtiqueta: 'Comisiones',
        saldoEtiqueta: comisiones,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ComisionesPage()));
        },
        colorEtiqueta: Color.fromRGBO(8, 63, 164, 1));
  }

  Widget bannerBonos() {
    return EtiquetaSaldo(
        tituloEtiqueta: 'Bonos',
        saldoEtiqueta: bonos,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BonosPage()));
        },
        colorEtiqueta: Colors.orange);
  }

  Widget bannerOtrosMovimientos() {
    return EtiquetaSaldo(
        tituloEtiqueta: 'Otros Movimientos',
        saldoEtiqueta: otrosmovimientos,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => OtrosMovimientos()));
        },
        colorEtiqueta: Colors.red);
  }

  Widget buttonFacturacion() {
    return BotonNaranja(
      tituloBoton: 'VER COMPROBANTE',
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ComprobantePage()));
      },
    );
  }
}
