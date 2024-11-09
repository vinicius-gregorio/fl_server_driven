import 'package:fl_server_driven/common/widgets/global_appbar/global_appbar.dart';
import 'package:fl_server_driven/common/widgets/global_drawer/global_drawer.dart';
import 'package:fl_server_driven/data/json/json01.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

class RendererHomePage extends StatefulWidget {
  const RendererHomePage({super.key});

  @override
  State<RendererHomePage> createState() => _RendererHomePageState();
}

class _RendererHomePageState extends State<RendererHomePage> {
  late JsonWidgetData? _data;

  @override
  void initState() {
    super.initState();
    _data = JsonWidgetData.fromDynamic(json01,
        registry: JsonWidgetRegistry.instance);

    print(" _data: $_data");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: GlobalAppbar(title: "Renderer"),
      drawer: GlobalDrawer(),
      body: Column(
        children: [
          if (_data != null)
            Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  )),
              width: 500,
              height: 300,
              child: _data!.build(
                context: context,
                registry: JsonWidgetRegistry.instance,
              ),
            )
        ],
      ),
    );
  }
}
