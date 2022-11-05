import 'package:flutter/material.dart';
import 'package:prima_lezione/branches/domain/data/branches/local_branches.dart';
import 'package:prima_lezione/branches/domain/data/presences/local_presences.dart';
import 'package:prima_lezione/branches/domain/models/branch.dart';
import 'package:prima_lezione/branches/domain/models/presences.dart';
import 'package:prima_lezione/branches/domain/repository/branches/branches_repository.dart';
import 'package:prima_lezione/branches/domain/repository/presences/presences_repository.dart';
import 'package:prima_lezione/branches/widget/branches_oveview_sliver_appbar.dart';
import 'package:prima_lezione/branches/widget/branch_list_item.dart';
import 'package:prima_lezione/branches/widget/selected_branch_card.dart';

class BranchesOverview extends StatefulWidget {
  const BranchesOverview({Key? key}) : super(key: key);

  @override
  State<BranchesOverview> createState() => _BranchesOverviewState();
}

class _BranchesOverviewState extends State<BranchesOverview> {
  late List<Branch> _branches;
  late Branch _currentBranch; //indica che viene dichiarata anche dopo
  late List<Presence> _currentPresences;

  BranchesRepository branchesRepository = BranchesRepository(branchesDataProvider: LocalBranches());
  PresencesRepository presencesRepository = PresencesRepository(presencesDataProvider: LocalPresences());

  @override
  void initState() {
    super.initState();

    _branches = branchesRepository.getAllBraches();
    _currentBranch = _branches[0];
    _currentPresences = presencesRepository.getAllPresencesByBranchIdAndDateAfter(_currentBranch, DateTime.now());
  }

  void _setCurrentBranch(newBranch) {
    if (newBranch == null) {
      return;
    }
    setState(() {
      _currentBranch = newBranch;
      _currentPresences = presencesRepository.getAllPresencesByBranchIdAndDateAfter(_currentBranch.id, DateTime.now());
    });
  }

  //build landscape e portrait
  //installare tabella


  @override
  Widget build(BuildContext: context){
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return mediaQuery.orientation == Orientation.portrait ? _
  }


  Widget _buildPortraitBody(context){
    return CustomScrollView(
      slivers: <Widget>[
        SliverPersistentHeader(
          pinned: true,
          delegate: BranchesOverviewSliverAppBar(


        )
        )

        
      ],



    )


  }

  // @override
  // Widget build(BuildContext context) {
  //   return Column(children: [
  //     Card(
  //         child: SelectedBranchCard(
  //       currentBranchName: _currentBranch.name,
  //       branchImage: _currentBranch.imagePath,
  //     )),
  //     const Divider(),
  //     Expanded(
  //       child: ListView.builder(
  //         itemBuilder: (_, index) => BranchListItem(
  //           branch: Branch.fromMap(_branches[index]),
  //           actionFn: () {
  //             _setCurrentBranch(Branch.fromMap(_branches[index]));
  //           },
  //         ),
  //         itemCount: _branches.length,
  //       ),
  //     )
  //   ]);
  // }
}
