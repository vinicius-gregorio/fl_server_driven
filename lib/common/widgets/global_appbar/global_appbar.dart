import 'package:flutter/material.dart';

class GlobalAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const GlobalAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: SelectableText(title));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
