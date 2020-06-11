 import 'dart:convert';
import 'dart:io';
import '../../../SegundaClave.dart';
import 'package:http/http.dart' as http;




Future<SegundaClave>  getClaves() async {

   var headers = {HttpHeaders.contentTypeHeader: 'application/json'};
  final http.Response response = await http.post(
    'http://api-dev.oscp.gnp.com.mx/NipsServices/validar/nip2/',
    headers: headers,
    body: json.encode({
          'cua': "83466",
          'nip': "87654321"
        })
  );
  //print(response.body);

   var decodedData = json.decode(response.body);
  print(decodedData);

  final clave = new SegundaClave.fromJson(decodedData);

  return clave;




  
 


  } 
  
  