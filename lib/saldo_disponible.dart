import 'package:ingresos/Commons/BotonNaranja.dart';
import 'package:ingresos/Commons/EtiquetaSaldos.dart';
import 'package:ingresos/Commons/FondoAzul.dart';
import 'package:ingresos/Commons/GraficaCircular.dart';
import 'package:flutter/material.dart';

import 'bonos_page.dart';
import 'comisiones_page.dart';
import 'detalle_ingresos.dart';
import 'facturacion_page.dart';
import 'model_ingresos.dart';
import 'otros_movimientos.dart';

class SaldoDisponible extends StatefulWidget {

  @override
  _SaldoDisponibleState createState() => _SaldoDisponibleState();
}

class _SaldoDisponibleState extends State<SaldoDisponible> {
  DetallesIngresosDto detalleData;

  double comisiones = 320000;

  double bonos = 800000;

  double otrosmovimientos = 222000;

  double impuestos = 1000000;

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
             Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetalleIngresos()));
            }),
        centerTitle: true,
        title: Text(
          'Saldo Disponible',
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
      tituloGrafica: 'Saldo Disponible',
      saldoDisponible: saldoDisponible,
      comisionesG: comisiones,
      bonosG: bonos,
      otrosmovimientosG: otrosmovimientos,
      fecha: '15/04/2020',
      fechaFinal: '15/05/2020',
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
      tituloBoton: 'VER DATOS DE FACTURACIÓN',
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => FacturacionPage()));
      },
    );
  }
}
