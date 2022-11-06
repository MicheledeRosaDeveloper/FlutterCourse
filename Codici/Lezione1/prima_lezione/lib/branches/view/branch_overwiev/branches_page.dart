import 'package:flutter/material.dart';
import 'package:prima_lezione/app/theme/widget/main_branch_app_bar.dart';
import 'package:prima_lezione/branches/view/branch_overwiev/braches_overview.dart';

class BranchesPage extends StatelessWidget {
  const BranchesPage({super.key});

//landscape
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: BranchAppBar(),
        body: BranchesOverview(),
      ),
    );
  }
}
