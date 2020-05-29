

class Asegurado {

  
final int id;
final String nombre;
final List<AseguradosVida> aseguradosVida;
AseguradosVida aseguradosVidaDto;

 /*  factory PolizaGeneralDto.fromJson(Map<String, dynamic> json) => PolizaGeneralDto(
        polizaGeneralDto: PolizaGeneralDtoElement.fromJson(json["polizaGeneralDto"][0]),
    ); */
 
  Asegurado({this.id, this.nombre, this.aseguradosVida, this.aseguradosVidaDto });

factory Asegurado.fromJson(Map<String, dynamic> json) => Asegurado(
        aseguradosVidaDto: AseguradosVida.fromJson(json["aseguradosVidaDto"][0]),
);
}

  class AseguradosVida {
  final int poliza;
  final double comision;
  final double prima;

  AseguradosVida({this.poliza, this.comision, this.prima});

  factory AseguradosVida.fromJson(Map<String, dynamic> json){
 return AseguradosVida(
   poliza:json['poliza'],
   comision:json['comision'],
   prima: json['prima']
 );
 
}

  Map<String, dynamic> toJson() => {
        "poliza": poliza,
        "comision": comision,
         "prima": prima,

      
    };

}

