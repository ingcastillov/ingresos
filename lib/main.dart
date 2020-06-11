import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ingresos/login_page.dart';
import 'package:ingresos/login_page_noe.dart';
import 'Requests.dart';


void main() => runApp(MyApp());
/*   Asegurado asegurado;
  Asegurado aseguradosVidaDto; */
class MyApp extends StatelessWidget {



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
          const Locale('en'), // English
          const Locale('es'), // español
        ],

      title: 'Flutter Demo',
      theme: ThemeData(

        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Colors.white,
        
      ),
      home: MyHomePage(title: '' ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.agente}) : super(key: key);
  final String title;
  final AgentePrueba agente;
 
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;
  List<AgentePrueba> searchResult;
  String buzon;
 
  //SegundaClave clave;
  bool claveDecoded;


  _MyHomePageState();
@override
void initState() { 
  super.initState();
   searchResult = AgentePrueba.getAgentes();
  

 
}

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '',
            ),
      
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
/*             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetalleIngresos()),
  ); */
          });
   mostrarVentana();
       
        },
       
      ),  
    );
  }

           mostrarVentana() async {
var claveInfo = await getClaves();

if(claveInfo!=null){
  String buzon='S';
  if(buzon=='S'){
showDialog(context: context,
builder: (context) => LoginDialog(),
); 
  }
else{
showDialog(context: context,
builder: (context) => LoginDialogNoE(),
); 
}

print('si lo cumplio we');
}
else{
print('por mis uhevos no pasas giripollas');
}
 




          }

}



   class AgentePrueba{
String agente;
String cua;
String buzone;



AgentePrueba({this.agente, this.cua, this.buzone });

static List<AgentePrueba> getAgentes(){
  return <AgentePrueba>[
   AgentePrueba(agente: '12345', cua: '56453213212', buzone: 'N' ),
 AgentePrueba(agente: '12345', cua: '5435435323', buzone: 'S' ),


  ];
}

} 