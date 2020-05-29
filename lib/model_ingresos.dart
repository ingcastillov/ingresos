// To parse this JSON data, do
//
//   final detallesIngresos = detallesIngresosFromJson(jsonString);
/* 
import 'dart:convert';

class DetallesIngresosDto {
    final DetallesIngresosElement detalleGeneralDto;

    DetallesIngresosDto({
        this.detalleGeneralDto,
    });

    factory DetallesIngresosDto.fromJson(Map<String, dynamic> json) => DetallesIngresosDto(
    detalleGeneralDto: DetallesIngresosElement.fromJson(json["detalleGeneralDto"][0]),
    );
}

class DetallesIngresosElement {
    final int agente;
    final String cve;
    final int nom;
    final DateTime fecha;
    final String uen;
    final String trn;
    final String cns;
    final String asi;
    final double impanc;
    final double ivaret;
    final double ivaacr;
    final double isr;
    final double imp;
    final String aft;
    final String lot;
    final String pol;
    final String ope;
    final String fol;
    final String fla;
    final String ssd;
    final String coi;
    final String pag;
    final String ase;
    final String trnDes;
    final String desCoi;

    DetallesIngresosElement({
        this.agente,
        this.cve,
        this.nom,
        this.fecha,
        this.uen,
        this.trn,
        this.cns,
        this.asi,
        this.impanc,
        this.ivaret,
        this.ivaacr,
        this.isr,
        this.imp,
        this.aft,
        this.lot,
        this.pol,
        this.ope,
        this.fol,
        this.fla,
        this.ssd,
        this.coi,
        this.pag,
        this.ase,
        this.trnDes,
        this.desCoi,
    });

    factory DetallesIngresosElement.fromRawJson(String str) => DetallesIngresosElement.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory DetallesIngresosElement.fromJson(Map<String, dynamic> json) => DetallesIngresosElement(
        agente: json["agente"],
        cve: json["cve"],
        nom: json["num"],
        fecha: DateTime.parse(json["fecha"]),
        uen: json["uen"],
        trn: json["trn"],
        cns: json["cns"],
        asi: json["asi"],
        impanc: json["impanc"].toDouble(),
        ivaret: json["ivaret"].toDouble(),
        ivaacr: json["ivaacr"].toDouble(),
        isr: json["isr"].toDouble(),
        imp: json["imp"].toDouble(),
        aft: json["aft"],
        lot: json["lot"],
        pol: json["pol"],
        ope: json["ope"],
        fol: json["fol"],
        fla: json["fla"],
        ssd: json["ssd"],
        coi: json["coi"],
        pag: json["pag"],
        ase: json["ase"],
        trnDes: json["trn_DES"],
        desCoi: json["des_COI"],
    );

    Map<String, dynamic> toJson() => {
        "agente": agente,
        "cve": cve,
        "num": nom,
        "fecha": "${fecha.year.toString().padLeft(4, '0')}-${fecha.month.toString().padLeft(2, '0')}-${fecha.day.toString().padLeft(2, '0')}",
        "uen": uen,
        "trn": trn,
        "cns": cns,
        "asi": asi,
        "impanc": impanc,
        "ivaret": ivaret,
        "ivaacr": ivaacr,
        "isr": isr,
        "imp": imp,
        "aft": aft,
        "lot": lot,
        "pol": pol,
        "ope": ope,
        "fol": fol,
        "fla": fla,
        "ssd": ssd,
        "coi": coi,
        "pag": pag,
        "ase": ase,
        "trn_DES": trnDes,
        "des_COI": desCoi,
    };
}
 */

import 'dart:convert';

DetallesIngresosDto detallesIngresosDtoFromJson(String str) => DetallesIngresosDto.fromJson(json.decode(str));

String detallesIngresosDtoToJson(DetallesIngresosDto data) => json.encode(data.toJson());

class DetallesIngresosDto {
    int agente;
    String cve;
    int num;
    DateTime fecha;
    String uen;
    String trn;
    String cns;
    String asi;
    double impanc;
    double ivaret;
    double ivaacr;
    double isr;
    double imp;
    String aft;
    String lot;
    String pol;
    String ope;
    String fol;
    String fla;
    String ssd;
    String coi;
    String pag;
    String ase;
    String trnDes;
    String desCoi;

    DetallesIngresosDto({
        this.agente,
        this.cve,
        this.num,
        this.fecha,
        this.uen,
        this.trn,
        this.cns,
        this.asi,
        this.impanc,
        this.ivaret,
        this.ivaacr,
        this.isr,
        this.imp,
        this.aft,
        this.lot,
        this.pol,
        this.ope,
        this.fol,
        this.fla,
        this.ssd,
        this.coi,
        this.pag,
        this.ase,
        this.trnDes,
        this.desCoi,
    });

    factory DetallesIngresosDto.fromJson(Map<String, dynamic> json) => DetallesIngresosDto(
        agente: json["agente"],
        cve: json["cve"],
        num: json["num"],
        fecha: DateTime.parse(json["fecha"]),
        uen: json["uen"],
        trn: json["trn"],
        cns: json["cns"],
        asi: json["asi"],
        impanc: json["impanc"].toDouble(),
        ivaret: json["ivaret"].toDouble(),
        ivaacr: json["ivaacr"].toDouble(),
        isr: json["isr"].toDouble(),
        imp: json["imp"].toDouble(),
        aft: json["aft"],
        lot: json["lot"],
        pol: json["pol"],
        ope: json["ope"],
        fol: json["fol"],
        fla: json["fla"],
        ssd: json["ssd"],
        coi: json["coi"],
        pag: json["pag"],
        ase: json["ase"],
        trnDes: json["trn_DES"],
        desCoi: json["des_COI"],
    );

    Map<String, dynamic> toJson() => {
        "agente": agente,
        "cve": cve,
        "num": num,
        "fecha": "${fecha.year.toString().padLeft(4, '0')}-${fecha.month.toString().padLeft(2, '0')}-${fecha.day.toString().padLeft(2, '0')}",
        "uen": uen,
        "trn": trn,
        "cns": cns,
        "asi": asi,
        "impanc": impanc,
        "ivaret": ivaret,
        "ivaacr": ivaacr,
        "isr": isr,
        "imp": imp,
        "aft": aft,
        "lot": lot,
        "pol": pol,
        "ope": ope,
        "fol": fol,
        "fla": fla,
        "ssd": ssd,
        "coi": coi,
        "pag": pag,
        "ase": ase,
        "trn_DES": trnDes,
        "des_COI": desCoi,
    };
}