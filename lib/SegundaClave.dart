/* 
class SegundaClave {
    final SegundaClaveElement polizaGeneralDto;

    SegundaClave({
     this.polizaGeneralDto,
    });


    factory SegundaClave.fromJson(Map<String, dynamic> json) => SegundaClave(
        polizaGeneralDto: SegundaClaveElement.fromJson(json),
    );

}

class SegundaClaveElement {
    final bool error;
    final String message;


    SegundaClaveElement({
        this.error,
        this.message,

    });

    factory SegundaClaveElement.fromJson(Map<String, dynamic> json){
      return SegundaClaveElement(
        error: json["error"],
        message: json["message"],

    );
}

    Map<String, dynamic> toJson() => {
        "error": error,
        "message": message,

    };


}
 */



import 'dart:convert';

SegundaClave segundaClaveFromJson(String str) => SegundaClave.fromJson(json.decode(str));

String segundaClaveToJson(SegundaClave data) => json.encode(data.toJson());

class SegundaClave {
    SegundaClave({
        this.error,
        this.message,
    });

    bool error;
    String message;

    factory SegundaClave.fromJson(Map<String, dynamic> json) => SegundaClave(
        error: json["error"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "error": error,
        "message": message,
    };
}

 

