import 'package:fl_server_driven/modules/exporter/features/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ExporterModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/home', child: (context) => ExporterHomePage());
  }
}
