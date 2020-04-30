import 'package:flutter/material.dart';



class FondoAzul extends StatefulWidget {
 




   FondoAzul(
      {Key key,
 
 
  
   
  }): super(key: key);
    FondoAzulState createState() => new FondoAzulState();
}

class FondoAzulState extends State<FondoAzul> {

 
@override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorFondo = Container(
      height: size.height * 0.23,
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

}
