import 'package:json_dynamic_widget/json_dynamic_widget.dart';

class FromJsonWidget extends StatefulWidget {
  final Map<String, dynamic> jsonData;
  final JsonWidgetRegistry registry;

  const FromJsonWidget(
      {super.key, required this.jsonData, required this.registry});

  @override
  State<FromJsonWidget> createState() => _FromJsonWidgetState();
}

class _FromJsonWidgetState extends State<FromJsonWidget> {
  late JsonWidgetData _data;

  @override
  void initState() {
    super.initState();
    _data = JsonWidgetData.fromDynamic(widget.jsonData);
  }

  @override
  Widget build(BuildContext context) {
    return _data.build(context: context, registry: widget.registry);
  }
}
