import 'package:flutter/material.dart';
import 'package:prima_lezione/app/theme/theme.dart';
import 'package:prima_lezione/branches/view/branches_page.dart';

class AppView extends StatelessWidget {
  const AppView({
    Key? key,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const BranchesPage(),
    );
  }
}