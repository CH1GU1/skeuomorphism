import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class NeumorphicIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const NeumorphicIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      padding: const EdgeInsets.all(12),
      style: const NeumorphicStyle(
        boxShape: NeumorphicBoxShape.circle(),
        shape: NeumorphicShape.convex,
        oppositeShadowLightSource: true,
        depth: -8,
      ),
      child: NeumorphicButton(
        style: const NeumorphicStyle(
          boxShape: NeumorphicBoxShape.circle(),
          shape: NeumorphicShape.convex,
          oppositeShadowLightSource: false,
          intensity: 1,
          depth: 5,
          border: NeumorphicBorder(
            width: 0.5,
            color: Color.fromARGB(50, 255, 255, 255),
          ),
        ),
        onPressed: onPressed,
        padding: const EdgeInsets.all(20),
        child: Icon(
          icon,
          size: 30,
          color: Colors.grey[800],
        ),
      ),
    );
  }
}
