import 'package:flutter/material.dart';
import 'package:ingresos/pages/Saldo%20Disponible/comisiones_page.dart';
import 'package:ingresos/pages/Saldo%20Disponible/saldo_disponible.dart';

class DetalleIngresos extends StatefulWidget {
  DetalleIngresos({Key key}) : super(key: key);

  @override
  _DetalleIngresosState createState() => _DetalleIngresosState();
}

class _DetalleIngresosState extends State<DetalleIngresos> {
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
          'Detalle de Ingresos',
          style: TextStyle(color: Colors.blueGrey),
        ),
      ),
      body: Stack(
        children: <Widget>[
          _crearFondo(context),
          listaOpciones(),
          listaOpciones2(),
          buttonJ(),
          buttonK(),
          buttonL(),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}),
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

    return Stack(
      children: <Widget>[
        colorFondo,
        Positioned(top: -70, right: 0, child: circulo),
        Positioned(top: -40, right: -120, child: circulo),
        Positioned(top: -40, right: -250, child: circulo),

        /*   Positioned(top: 100, left: 0, child: circulo),
                          Positioned(top: 50, left: 0, child: circulo),
                           Positioned(top: 0, left: 0, child: circulo),
                           Positioned(top: -80, left: 0, child: circulo),
                            Positioned(top: -160, left: 0, child: circulo),
                            Positioned(top: -250, left: 0, child: circulo), */

        Container(
          padding: EdgeInsets.only(top: 50, left: 20),
          child: Column(
            children: <Widget>[
              SizedBox(),
              Text(
                'Saldo Disponible',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 80, left: 20),
          child: Column(
            children: <Widget>[
              SizedBox(),
              Text(
                '\u002484,692.87',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 140, left: 20),
          child: Column(
            children: <Widget>[
              SizedBox(),
              Text(
                'Del 14/10/19 al 16/10/19',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 140, left: 270),
          child: Column(
            children: <Widget>[
              SizedBox(),
              Text(
                'Ver detalle',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        ),

      ],
    );
  }

  Widget listaOpciones() {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
        child: Column(children: <Widget>[
      SafeArea(
          child: Container(
        height: 130,
      )),
      Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        margin: EdgeInsets.symmetric(vertical: 50),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.account_balance_wallet,
                size: 50,
                color: Colors.blueGrey,
              ),
              title: Text('Ultimo periodo facturado'),
              subtitle: Text(
                '\u002443,983.87',
                style: TextStyle(fontSize: 25),
              ),
             
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
    ]));
  }

  Widget listaOpciones2() {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
        child: Column(children: <Widget>[
      SafeArea(
          child: Container(
        height: 235,
      )),
      Container(
        padding: EdgeInsets.fromLTRB(0, 18, 0, 20),
        margin: EdgeInsets.symmetric(vertical: 50),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.calendar_today,
                size: 50,
                color: Colors.blueGrey,
              ),
              title: Text(
                'Periodos anteriores',
                style: TextStyle(color: Colors.blueGrey, fontSize: 18),
              ),
        
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
    ]));
  }

  Widget buttonJ(){
    return                Container(
          padding: EdgeInsets.only(top: 119, left: 330),
          child: Column(
            
            children: <Widget>[
              Container(
                 padding: EdgeInsets.all(8),
               // color: Colors.red,
                child: IconButton(
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
        );
  }

    Widget buttonK(){
    return                Container(
          padding: EdgeInsets.only(top: 230, left: 330),
          child: Column(
            
            children: <Widget>[
        Container(
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
                         Navigator.push(context, MaterialPageRoute(builder: (context) => ComisionesPage() ));
                      })),
            ],
          ),
        );
  }

    Widget buttonL(){
    return              Container(
          padding: EdgeInsets.only(top: 335, left: 330),
          child: Column(
            
            children: <Widget>[
        Container(
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
                         Navigator.push(context, MaterialPageRoute(builder: (context) => ComisionesPage() ));
                      })),
            ],
          ),
        );
  }
}
