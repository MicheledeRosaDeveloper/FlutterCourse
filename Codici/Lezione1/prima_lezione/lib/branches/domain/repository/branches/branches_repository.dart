import 'package:prima_lezione/branches/domain/data/branches/branches_data_provider.dart';
import 'package:prima_lezione/branches/domain/models/branch.dart';

class BranchesRepository{

  final BranchesDataProvider branchesDataProvider;

  BranchesRepository({required this.branchesDataProvider});
  
  List<Branch> getAllBraches(){
    return branchesDataProvider.getBranches();
  }



}