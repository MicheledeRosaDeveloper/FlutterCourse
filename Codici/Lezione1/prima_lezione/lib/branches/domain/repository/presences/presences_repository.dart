import 'package:prima_lezione/branches/domain/data/presences/presences_data_provider.dart';
import 'package:prima_lezione/branches/domain/models/presences.dart';

class PresencesRepository {
  final PresencesDataProvider presencesDataProvider;

  PresencesRepository({required this.presencesDataProvider});

  List<Presence> getAllPresencesByBranchId(int branchId){
    return presencesDataProvider.getPresencesByBranchesId(branchId);
  }


  List<Presence> getAllPresencesByBranchIdAndDateAfter(int branchId, DateTime dateTime){
    return presencesDataProvider.getPresencesByBranchesIdAndDateAfter(branchId, dateTime);
  }

}