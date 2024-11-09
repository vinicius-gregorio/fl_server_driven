import 'package:fl_server_driven/common/widgets/global_appbar/global_appbar.dart';
import 'package:fl_server_driven/common/widgets/global_drawer/global_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppbar(
        title: "Home Page",
      ),
      drawer: GlobalDrawer(),
      body: Center(
        child: Text('This is renderer home page'),
      ),
    );
  }
}
