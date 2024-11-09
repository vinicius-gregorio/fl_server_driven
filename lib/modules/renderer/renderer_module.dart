import 'package:fl_server_driven/modules/renderer/features/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RendererModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/home', child: (context) => RendererHomePage());
  }
}
