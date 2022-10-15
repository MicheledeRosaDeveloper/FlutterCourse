import 'package:flutter/material.dart';

class BranchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BranchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Image.asset(
        'assets/images/si2001-logo-bianco.png',
      ),
      title: const Text('Sedi Si2001'),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.person,
            color: Colors.white,
          ),
          onPressed: () {},
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}
