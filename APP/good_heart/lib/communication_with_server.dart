import 'dart:convert';

CommunicationWithServer communicationWithServerFromJson(String str) => CommunicationWithServer.fromJson(json.decode(str));

String communicationWithServerToJson(CommunicationWithServer data) => json.encode(data.toJson());

class CommunicationWithServer {
  // CommunicationWithServer({
  //   this.IdMsg,
  //   this.OpCode,
  //   this.ECGTime,
  //   this.ECGfile,
  //   this.FreqCard,
  //   this.GoodComplex,
  //   this.BadComplex,
  // });

  dynamic IdMsg;
  dynamic OpCode;
  dynamic ECGTime;
  dynamic ECGfile;
  dynamic FreqCard;
  dynamic GoodComplex;
  dynamic BadComplex;

  CommunicationWithServer({this.IdMsg, this.OpCode, this.ECGTime, this.ECGfile, this.FreqCard, this.GoodComplex, this.BadComplex,});

  String toJson() {
    var data = <String, dynamic>{};
    data["IdMsg"] = this.IdMsg;
    data["OpCode"] = this.OpCode;
    data["ECGTime"] = this.ECGTime;
    data["ECGfile"] = this.ECGfile;
    data["FreqCard"] = this.FreqCard;
    data["GoodComplex"] = this.GoodComplex;
    data["BadComplex"] = this.BadComplex;
    return jsonEncode(data);
  }

  factory CommunicationWithServer.fromJson(Map<String, dynamic> json) =>
      CommunicationWithServer(
        IdMsg: json["IdMsg"],
        OpCode: json["OpCode"],
        ECGTime: json["ECGTime"],
        ECGfile: json["ECGfile"],
        FreqCard: json["FreqCard"],
        GoodComplex: json["GoodComplex"],
        BadComplex: json["BadComplex"],
      );
        

  // Map<String, dynamic> toJson() =>
  //     {
  //       "IdMsg": IdMsg,
  //       "OpCode": OpCode,
  //       "ECGTime": ECGTime,
  //       "ECGfile": ECGfile,
  //       "FreqCard": FreqCard,
  //       "GoodComplex": GoodComplex,
  //       "BadComplex": BadComplex,
  //     };

}