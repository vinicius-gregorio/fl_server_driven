import 'package:json_dynamic_widget/json_dynamic_widget.dart';

class ExportedWidget extends StatelessWidget {
  final GlobalKey<JsonWidgetExporterData> exportKey;
  const ExportedWidget({super.key, required this.exportKey});

  @override
  Widget build(BuildContext context) {
    return JsonWidgetExporter(
        key: exportKey,
        child: JsonExportable(
            child: JsonListView(children: [
          JsonListTile(
            title: JsonText('Meus dados'),
            subtitle: JsonText('Visualize e edite seus dados'),
          ),
          JsonListTile(
            title: JsonText('Configurações'),
            subtitle: JsonText('Configure o aplicativo'),
          ),
          JsonListTile(
            title: JsonText('Sobre'),
            subtitle: JsonText('Conheça mais sobre o aplicativo'),
          ),
        ])));
  }
}
