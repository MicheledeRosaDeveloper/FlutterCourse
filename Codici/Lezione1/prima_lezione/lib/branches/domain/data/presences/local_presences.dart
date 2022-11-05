
import 'dart:math';

import 'package:prima_lezione/branches/domain/data/presences/presences_data_provider.dart';
import 'package:prima_lezione/branches/domain/models/presences.dart';

class LocalPresences implements PresencesDataProvider {
  final _presences = [
    Presence(
        branchId: 1,
        dateTime: DateTime.now().add(const Duration(days: 1)),
        username: "xxx.yyy"),
    Presence(
        branchId: 2,
        dateTime: DateTime.now().add(const Duration(days: 2)),
        username: "qqq.www"),
    Presence(
        branchId: 3,
        dateTime: DateTime.now().add(const Duration(days: 3)),
        username: "eee.rrr"),
    Presence(
        branchId: 4,
        dateTime: DateTime.now().add(const Duration(days: 1)),
        username: "qqq.www"),
    Presence(
        branchId: 1,
        dateTime: DateTime.now().add(const Duration(days: 4)),
        username: "qqq.www"),
    Presence(branchId: 2, dateTime: DateTime.now(), username: "www.eee"),
    Presence(branchId: 3, dateTime: DateTime.now(), username: "www.eee"),
    Presence(
        branchId: 1,
        dateTime: DateTime.now().add(const Duration(days: 10)),
        username: "eee.rrr"),
    Presence(
        branchId: 1,
        dateTime: DateTime.now().add(const Duration(days: 5)),
        username: "eee.rrr"),
    Presence(branchId: 1, dateTime: DateTime.now(), username: "luigi.durso"),
    Presence(
        branchId: 1,
        dateTime: DateTime.now().add(const Duration(days: 2)),
        username: "luigi.durso"),
    Presence(
        branchId: 1,
        dateTime: DateTime.now().add(const Duration(days: 2)),
        username: "qwe.qwe"),
    Presence(
        branchId: 1,
        dateTime: DateTime.now().add(const Duration(days: 2)),
        username: "ewq.eqw"),
    Presence(
        branchId: 1,
        dateTime: DateTime.now().add(const Duration(days: 2)),
        username: "ww.ee"),
  ];
  
  @override
  List<Presence> getPresencesByBranchesId(int branchId) {
    return  _presences.where((element) => element.branchId == branchId).toList();
  }
  
  @override
  List<Presence> getPresencesByBranchesIdAndDateAfter(int branchId, DateTime dateTime) {
    return _presences.where((element) => element.branchId == branchId && dateTime.isBefore(element.dateTime)).toList();
  }


}