import 'package:prima_lezione/branches/domain/models/presences.dart';

abstract class PresencesDataProvider { 

  List<Presence> getPresencesByBranchesId(int branchId);

  List<Presence> getPresencesByBranchesIdAndDateAfter(int branchId, DateTime dateTime);

}