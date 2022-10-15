import 'package:flutter/material.dart';
import 'package:prima_lezione/branches/models/branch.dart';
import 'package:prima_lezione/branches/widget/branch_list_item.dart';
import 'package:prima_lezione/branches/widget/selected_branch_card.dart';

class BranchesOverview extends StatefulWidget {
  const BranchesOverview({Key? key}) : super(key: key);

  @override
  State<BranchesOverview> createState() => _BranchesOverviewState();
}

class _BranchesOverviewState extends State<BranchesOverview> {
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

  late Branch _currentBranch; //indica che viene dichiarata anche dopo

  @override
  void initState() {
    super.initState();
    _currentBranch = Branch.fromMap(_branches[0]);
  }

  void _setCurrentBranch(newBranch) {
    if (newBranch == null) {
      return;
    }
    setState(() {
      _currentBranch = newBranch;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Card(
          child: SelectedBranchCard(
        currentBranchName: _currentBranch.name,
        branchImage: _currentBranch.imagePath,
      )),
      const Divider(),
      Expanded(
        child: ListView.builder(
          itemBuilder: (_, index) => BranchListItem(
            branch: Branch.fromMap(_branches[index]),
            actionFn: () {
              _setCurrentBranch(Branch.fromMap(_branches[index]));
            },
          ),
          itemCount: _branches.length,
        ),
      )
    ]);
  }
}
