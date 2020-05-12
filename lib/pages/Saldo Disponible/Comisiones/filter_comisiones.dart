import 'package:flutter/material.dart';
import 'comisiones_page.dart';
import 'comisiones_page_filtered.dart';


class FilterList extends StatefulWidget {
  FilterList({Key key}) : super(key: key);

  @override
  _FilterListState createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {
   TextEditingController controller = new TextEditingController();
     List<Avengers> searchResult;
     List<Avengers> _userDetails;
     bool visible=false;


  @override
  void initState() {
    super.initState();

    
     searchResult = Avengers.getAvengers();
     _userDetails = Avengers.getAvengers();
  }

  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton:        Container(
         padding: EdgeInsets.only(left: 35),
               alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[

           
            Container(
               height: size.height*0.07,
              width: size.width*0.42,
              child: RaisedButton(

                // padding: EdgeInsets.fromLTRB(44, 15, 44, 15),
                child: Text('Borrar Filtros'),
                color: Colors.white,
              
                onPressed: (){
                      controller.clear();
                  onSearchTextChanged(''); 
                                  Navigator.push(context,
              MaterialPageRoute(builder: (context) => ComisionesPage()));
                },

              ),
            ),
            Text('    '),
              Container(
                 height: size.height*0.07,
              width: size.width*0.42,
                child: RaisedButton(
                // padding: EdgeInsets.fromLTRB(64, 15, 64, 15),
                    color: Colors.orange,
                     child: Text('Filtrar', style: TextStyle(color: Colors.white),),
                onPressed: (){
                Navigator.push(context,
              MaterialPageRoute(builder: (context) => ComisionesPageFiltered(searchResult: searchResult,)));
                },
                
            ),
              ),
          ],
        ),
              ),

       body: 
            SafeArea(
              child: Column(
               children: <Widget>[
                 ListTile(
                   leading: Text('Filtros', style: TextStyle(color:Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
                   trailing:            IconButton(icon: Icon(Icons.close,), onPressed: (){
    Navigator.pop(context);
               }),
                 ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text('    Buscar por nombre o número de Póliza', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)),

                            Container(
                              padding: EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
                child: TextField(
                  onChanged: onSearchTextChanged,
                  controller: controller,
                  decoration: InputDecoration(
                    prefixIcon:  Icon(Icons.search, color: Colors.grey,),
                    labelText: 'Nombre o numero de poliza',
                   border: OutlineInputBorder(
                    
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 5.0
                    ),
                   ),
               
                  
                  ),
           
                )),


       controller.text.isEmpty ? Container() :
         new Expanded(
           
              child: searchResult.length != 0 || controller.text.isNotEmpty
                  ? new ListView.builder(
                itemCount: searchResult.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(0,2,0,2),
                    child: new Card(
                   
                      child: new ListTile(
                       contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    
                        title: Row(
                          children: <Widget>[

                  searchResult[i].tipo=='vida' ? Icon(Icons.lens, color: Colors.green, size: 10,)
                : searchResult[i].tipo=='salud' ? Icon(Icons.lens, color: Colors.blue, size: 10,) 
                : searchResult[i].tipo=='autos' ? Icon(Icons.lens, color: Colors.orange, size: 10,) 
                : searchResult[i].tipo=='danos' ? Icon(Icons.lens, color: Colors.purple, size: 10,)
                :null,
                SizedBox(width: 15,),
                            new Text(searchResult[i].poliza),
                            SizedBox(width: 5,),
                             new Text(searchResult[i].asegurado),
                             Visibility(
                               visible: visible,
                               child: new Text(searchResult[i].comision.toString()+ searchResult[i].prima.toString()))
                          ],
                        ),
                      ),
                     margin: const EdgeInsets.all(0.0),
                    ),
                  );
                },
              )
                  : new ListView.builder(
                itemCount: _userDetails.length,
                itemBuilder: (context, index) {
                  return new Card(
                 
                    child: new ListTile(
   leading:searchResult[index].tipo=='vida' ? Icon(Icons.lens, color: Colors.green, size: 10,)
                : searchResult[index].tipo=='salud' ? Icon(Icons.lens, color: Colors.blue, size: 10,) 
                : searchResult[index].tipo=='autos' ? Icon(Icons.lens, color: Colors.orange, size: 10,) 
                : searchResult[index].tipo=='danos' ? Icon(Icons.lens, color: Colors.purple, size: 10,)
                :null,
                      title: new Text(_userDetails[index].poliza + ' ' + _userDetails[index].asegurado),

                    ),
                    margin: const EdgeInsets.all(0.0),
                  );
                },
              ),  
          ),

         

       
               ],
           ),
            ),
     
    );
  }



    onSearchTextChanged(String text) async {
    searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

        _userDetails.forEach((userDetail) {
      if (userDetail.asegurado.contains(text) || userDetail.poliza.contains(text))
        searchResult.add(userDetail);
    });

    setState(() {});
}




}