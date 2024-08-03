import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:skeuomorphism/presentation/widgets/shared/neumorphic_button.dart';
import 'package:skeuomorphism/presentation/widgets/shared/text_field_widget.dart';
import 'package:skeuomorphism/presentation/widgets/video/video_player_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interfaz Skeuomorfica'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.loose,
                    child: Neumorphic(
                      padding: const EdgeInsets.all(10),
                      style: const NeumorphicStyle(
                          oppositeShadowLightSource: true,
                          depth: -5,
                          intensity: 0.8,
                          lightSource: LightSource.topLeft),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: const VideoPlayerWidget(
                            videoUrl: 'assets/videos/v1.mp4'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.loose,
                    child: Neumorphic(
                      padding: const EdgeInsets.all(10),
                      style: const NeumorphicStyle(
                          oppositeShadowLightSource: true,
                          depth: -5,
                          intensity: 0.8,
                          lightSource: LightSource.topLeft),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: const VideoPlayerWidget(
                            videoUrl: 'assets/videos/v2.mp4'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NeumorphicIconButton(
                  icon: Icons.keyboard_arrow_left,
                  onPressed: () {},
                ),
                NeumorphicIconButton(
                  icon: Icons.keyboard_arrow_up,
                  onPressed: () {},
                ),
                NeumorphicIconButton(
                  icon: Icons.keyboard_arrow_right,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 30),
            const TextFieldCustom(
              label: "Nombre",
              hint: "Escribe tu nombre",
            )
          ],
        ),
      ),
    );
  }
}
