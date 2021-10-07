library my_prj.globals;

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'communication_with_server.dart';

int idMsgValue = 0;
final TextEditingController textEditingControllerConnectionTest = TextEditingController();
var listOfFiles = [];

jsonToList(String response) {
  listOfFiles = (json.decode(response) as List).map((i) => CommunicationWithServer.fromJson(i)).toList();
}