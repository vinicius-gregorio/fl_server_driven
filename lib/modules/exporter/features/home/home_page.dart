import 'package:fl_server_driven/common/widgets/global_appbar/global_appbar.dart';
import 'package:fl_server_driven/common/widgets/global_drawer/global_drawer.dart';
import 'package:fl_server_driven/modules/exporter/features/home/widgets/exported.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

class ExporterHomePage extends StatefulWidget {
  const ExporterHomePage({super.key});

  @override
  State<ExporterHomePage> createState() => _ExporterHomePageState();
}

class _ExporterHomePageState extends State<ExporterHomePage> {
  final GlobalKey<JsonWidgetExporterData> _exportKey =
      GlobalKey<JsonWidgetExporterData>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppbar(title: "Exporter"),
      drawer: GlobalDrawer(),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
              width: double.infinity,
              height: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                          color: Colors.red,
                          child: Text("change json to render"))),
                  Flexible(
                      child: Container(
                          color: Colors.red,
                          child: Text("change json to render"))),
                  Flexible(
                      child: Container(
                          color: Colors.red,
                          child: Text("change json to render"))),
                ],
              )),
          Expanded(
            child: Container(
              color: Colors.amber,
              width: double.infinity,
              child: Column(
                children: [
                  Text("This is exporter home page"),
                  OutlinedButton(
                      onPressed: () {
                        final data = _exportKey.currentState!.export();
                        Clipboard.setData(ClipboardData(text: data));
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Copied to clipboard'),
                          ),
                        );
                      },
                      child: Text('Export')),
                  // SizedBox(
                  //     height: 300,
                  //     width: 500,
                  //     child: ExportedWidget(exportKey: _exportKey))
                  SizedBox(
                    height: 300,
                    width: 500,
                    child: JsonWidgetExporter(
                      key: _exportKey,
                      child: JsonExportable(
                          child: JsonText('Hello World',
                              style: TextStyle(
                                color: Colors.red,
                              ))),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
