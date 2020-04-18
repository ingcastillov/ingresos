import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class VidaIndividual extends StatefulWidget {
  @override
  _VidaIndividualState createState() => _VidaIndividualState();
}

class _VidaIndividualState extends State<VidaIndividual> {
  final pattern = new NumberFormat("###,###,###.##");

  double vidaIndividual = 222000;
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
          'Vida Individual',
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
                        'Vida Individual',
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
            bonoProductividad(),
            bonoRenovacion(),
          
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

  Widget bonoProductividad() {
    //final size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: <Widget>[
          Text(''),
          Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                '  Bono de Productividad',
                style: TextStyle(
                    color: Colors.blueAccent[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              )),
          Divider(),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(4, 0, 4, 0),
            title: Row(
              children: <Widget>[
                Text('  Automatico'),
                Text(
                  '                               ' "\u0024" +
                      pattern.format(vidaIndividual),
                  style: TextStyle(color: Colors.blueGrey, fontSize: 17),
                ),
              ],
            ),
            trailing: Container(
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 25,
                      color: Colors.orange,
                    ),
                    onPressed: () {
                    //  Navigator.push(context, MaterialPageRoute(builder: (context) =>  ));
                    })),
          ),
          Divider(),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(4, 0, 4, 0),
            title: Row(
              children: <Widget>[
                Text('  Aclaracion'),
                Text(
                  '                                ' "\u0024" +
                      pattern.format(vidaIndividual),
                  style: TextStyle(color: Colors.blueGrey, fontSize: 17),
                ),
              ],
            ),
            trailing: Container(
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 25,
                      color: Colors.orange,
                    ),
                    onPressed: () {})),
          ),
          Divider(),
        ],
      ),
    );
  }

  Widget bonoRenovacion() {
    //final size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: <Widget>[
          Text(''),
          Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                '  Bono de Renovación',
                style: TextStyle(
                    color: Colors.blueAccent[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              )),
          Divider(),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(4, 0, 4, 0),
            title: Row(
              children: <Widget>[
                Text('  Automatico'),
                Text(  
                  '                                 ' "\u0024" +
                      pattern.format(vidaIndividual),
                  style: TextStyle(color: Colors.blueGrey, fontSize: 17),
                ),
              ],
            ),
            trailing: Container(
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 25,
                      color: Colors.orange,
                    ),
                    onPressed: () {})),
          ),
          Divider(),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(4, 0, 4, 0),
            title: Row(
              children: <Widget>[
                Text('  Aclaración'),
                Text(
                  '                                   ' "\u0024" + pattern.format(vidaIndividual),
                  style: TextStyle(color: Colors.blueGrey, fontSize: 17),
                ),
              ],
            ),
            trailing: Container(
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 25,
                      color: Colors.orange,
                    ),
                    onPressed: () {})),
          ),
          Divider(),
        ],
      ),
    );
  }


}