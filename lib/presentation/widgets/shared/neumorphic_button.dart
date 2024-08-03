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
        depth: -5,
      ),
      child: NeumorphicButton(
        style: const NeumorphicStyle(
          boxShape: NeumorphicBoxShape.circle(),
          shape: NeumorphicShape.convex,
          oppositeShadowLightSource: false,
          intensity: 0.8,
          depth: 8,
        ),
        onPressed: onPressed,
        padding: const EdgeInsets.all(25),
        child: Icon(icon),
      ),
    );
  }
}
