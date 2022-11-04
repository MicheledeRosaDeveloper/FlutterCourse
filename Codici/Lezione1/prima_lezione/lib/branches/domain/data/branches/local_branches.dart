import 'package:prima_lezione/branches/domain/data/branches/branches_data_provider.dart';
import 'package:prima_lezione/branches/domain/models/branch.dart';

class LocalBranches implements BranchesDataProvider{
  final _branches = [];
  
  @override
  List<Branch> getBranches() {
    return _branches.map((e) => Branch.fromMap(e)).toList();
  }
  }