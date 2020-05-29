import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:ingresos/model_ingresos.dart';
/*
class DetallesProvider{
var url = 'localhost::8000';
Future<bool> getUnits(DetallesIngresosDto category) async {
    var response = await http.get('$url/detalleingresosporperiodo/11163/10-11-2019/15-11-2019');
  //  return response.body;
  final decodedData = json.decode(response.body);
  print(decodedData);
  return true;
}

Future<List<DetallesIngresosDto>> loadUnits() async {
var url = 'http://192.168.1.102:8000';
final uri = '$url';
final resp = await http.get(uri);

final decodedData = json.decode(resp.body);
print(decodedData);

return [];

}

}
 */

/* Future<http.Response> fetchPost() {
  return http.get('http://localhost:8080/detalleingresosporperiodo/11163/10-11-2019/15-11-2019');
}

Future<DetallesIngresosDto> fetchPostX() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/posts/1');

  if (response.statusCode == 200) {
    // Si el servidor devuelve una repuesta OK, parseamos el JSON
    return DetallesIngresosDto.fromJson(json.decode(response.body));
  } else {
    // Si esta respuesta no fue OK, lanza un error.
    throw Exception('Failed to load post');
  }
}
 */


Future<DetallesIngresosDto> getPolizaData(
    BuildContext context, String poliza) async {
 // final Trace consultaInformacionPoliza = FirebasePerformance.instance.newTrace("ConsultaInformacionPoliza");
 // consultaInformacionPoliza.start();
  var headers = {HttpHeaders.contentTypeHeader: 'application/json'};
  //var config = AppConfig.of(context);  ESTO ES PARA UNIRSE EN LA APP
  try {
 var response = await http.get(
       'http://localhost:8080/detalleingresosporperiodo/11163/10-11-2019/15-11-2019',
        headers: headers);
    var responseData = json.decode(response.body);
  //  consultaInformacionPoliza.stop();
    if (responseData["polizaGeneralDto"].isEmpty) {
      return null;
    } else {
      var detalleDataObject = new DetallesIngresosDto.fromJson(responseData);
     /*  detalleDataObject.detalleGeneralDto
          .setHombreClave(await checkHombreClave(context, poliza));
      detalleDataObject.detalleGeneralDto.setBeneficiarioIrrevocable(
          await checkBeneficiarioIrrevocable(context, poliza,
              detalleDataObject.detalleGeneralDto.imp)); */
      return detalleDataObject;
    }
  } catch (e) {
   // consultaInformacionPoliza.stop();
    print(e);
    return null;
  }
}