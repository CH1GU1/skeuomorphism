import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:skeuomorphism/presentation/widgets/shared/neumorphic_iconbutton.dart';
import 'package:skeuomorphism/presentation/widgets/shared/text_field_widget.dart';
import 'package:skeuomorphism/presentation/widgets/video/video_player_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isWideScreen = MediaQuery.sizeOf(context).width >= 600;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: NeumorphicAppBar(
        title: Text(
          'Interfaz Neumorfista',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 28,
            shadows: const [
              Shadow(
                color: Colors.black38,
                offset: Offset(1.0, 1.0),
                blurRadius: 2,
              ),
            ],
            color: NeumorphicTheme.defaultTextColor(context),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Kevin",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    shadows: const [
                      Shadow(
                        color: Colors.black38,
                        offset: Offset(1.0, 1.0),
                        blurRadius: 2,
                      ),
                    ],
                    color: NeumorphicTheme.defaultTextColor(context),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: NeumorphicIcon(
                    Icons.tag_faces_sharp,
                    size: 60,
                    style: const NeumorphicStyle(
                      shape: NeumorphicShape.convex,
                      depth: 5,
                      surfaceIntensity: 1.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            isWideScreen
                ? const Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    spacing: 20,
                    children: [
                      VideoPlayerWidget(
                        videoUrl: 'assets/videos/v1.mp4',
                        maxHeight: 600,
                        maxWidth: 400,
                      ),
                      VideoPlayerWidget(
                        videoUrl: 'assets/videos/v2.mp4',
                        maxHeight: 600,
                        maxWidth: 400,
                      ),
                    ],
                  )
                : const Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    children: [
                      VideoPlayerWidget(
                        videoUrl: 'assets/videos/v1.mp4',
                        maxHeight: 300,
                        maxWidth: 200,
                      ),
                      VideoPlayerWidget(
                        videoUrl: 'assets/videos/v2.mp4',
                        maxHeight: 300,
                        maxWidth: 200,
                      ),
                    ],
                  ),
            const SizedBox(height: 20),
            Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.horizontal,
              spacing: 20,
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
            const SizedBox(height: 50),
            isWideScreen
                ? ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: screenWidth / 1.5),
                    child: const TextFieldWidget(
                      label: "Nombre",
                      hint: "Escribe tu nombre",
                    ),
                  )
                : const TextFieldWidget(
                    label: "Nombre",
                    hint: "Escribe tu nombre",
                  ),
          ],
        ),
      ),
    );
  }
}
