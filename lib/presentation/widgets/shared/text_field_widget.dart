import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class TextFieldCustom extends StatefulWidget {
  final String label;
  final String hint;
  final ValueChanged<String>? onChanged;

  const TextFieldCustom({
    super.key,
    required this.label,
    required this.hint,
    this.onChanged,
  });

  @override
  TextFieldCustomState createState() => TextFieldCustomState();
}

class TextFieldCustomState extends State<TextFieldCustom> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
          child: Text(
            widget.label,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: NeumorphicTheme.defaultTextColor(context),
            ),
          ),
        ),
        Neumorphic(
          margin: const EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 4),
          style: const NeumorphicStyle(
            depth: -5,
            intensity: 1,
            boxShape: NeumorphicBoxShape.stadium(),
            lightSource: LightSource.topLeft,
          ),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
          child: TextField(
            onChanged: widget.onChanged,
            controller: _controller,
            decoration: InputDecoration.collapsed(
              hintText: widget.hint,
              hintStyle: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.grey[500],
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
