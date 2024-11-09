import 'package:fl_server_driven/modules/app/features/home/home_page.dart';
import 'package:fl_server_driven/modules/exporter/exporter_module.dart';
import 'package:fl_server_driven/modules/renderer/renderer_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => HomePage());
    r.module('/renderer', module: RendererModule());
    r.module('/exporter', module: ExporterModule());
  }
}
