import 'package:fl_server_driven/common/widgets/global_appbar/global_appbar.dart';
import 'package:fl_server_driven/common/widgets/global_drawer/global_drawer.dart';
import 'package:fl_server_driven/data/json/json02.dart';
import 'package:flutter/material.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

const json = {
  "type": "text",
  "args": {"text": "Hello, World!"}
};

class RendererHomePage extends StatefulWidget {
  const RendererHomePage({super.key});

  @override
  State<RendererHomePage> createState() => _RendererHomePageState();
}

class _RendererHomePageState extends State<RendererHomePage> {
  JsonWidgetData? _data;

  @override
  void initState() {
    super.initState();

    // Use the default registry instance for simplicity
    final registry = JsonWidgetRegistry.instance;

    // Initialize JSON data with the default registry instance
    _data = JsonWidgetData.fromDynamic(json02, registry: registry);

    // Print debug information
    print('Data initialized: ${_data != null}');
    print('Data content: $_data');
    print(_data!.build(context: context, registry: registry).toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: GlobalAppbar(title: "Renderer"),
      drawer: GlobalDrawer(),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          alignment: Alignment.center,
          child: _data != null
              ? _data!.build(
                  context: context,
                  registry: JsonWidgetRegistry.instance,
                )
              : Text('Failed to render dynamic content'),
        ),
      ),
    );
  }
}
