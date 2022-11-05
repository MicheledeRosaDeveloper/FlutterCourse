import 'package:prima_lezione/branches/domain/data/branches/branches_data_provider.dart';
import 'package:prima_lezione/branches/domain/models/branch.dart';

class LocalBranches implements BranchesDataProvider{
  final _branches = [
    {
      'name': 'Treviolo',
      'address': 'xxx',
      'imagePath': 'https://picsum.photos/500/500'
    },
    {
      'name': 'Milano',
      'address': 'yyy',
      'imagePath': 'https://picsum.photos/500/500'
    },
    {
      'name': 'Battipaglia',
      'address': 'xxx',
      'imagePath': 'https://picsum.photos/500/500'
    },
    {
      'name': 'Palermo',
      'address': 'xxx',
      'imagePath': 'https://picsum.photos/500/500'
    },
    {
      'name': 'Messina',
      'address': 'xxx',
      'imagePath': 'https://picsum.photos/500/500'
    },
    {
      'name': 'Pescara',
      'address': 'xxx',
      'imagePath': 'https://picsum.photos/500/500'
    },
    {
      'name': 'Roma',
      'address': 'xxx',
      'imagePath': 'https://picsum.photos/500/500'
    }
  ];
  
  @override
  List<Branch> getBranches() {
    return _branches.map((e) => Branch.fromMap(e)).toList();
  }
  }