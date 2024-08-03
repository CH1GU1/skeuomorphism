import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:skeuomorphism/presentation/widgets/shared/neumorphic_button.dart';
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
          'Interfaz neumorfista',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 28,
            shadows: const [
              Shadow(
                  color: Colors.black38,
                  offset: Offset(1.0, 1.0),
                  blurRadius: 2)
            ],
            color: NeumorphicTheme.defaultTextColor(context),
          ),
        ),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Check the width of the screen to adjust layout accordingly
          // bool isWideScreen = constraints.maxWidth >= 350;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  // fit: FlexFit.loose,
                  flex: 1,
                  child: Row(
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
                                blurRadius: 2)
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
                ),
                Expanded(
                    flex: 3,
                    child: (isWideScreen)
                        ? Wrap(
                            // runAlignment: WrapAlignment.spaceEvenly,
                            // crossAxisAlignment: WrapCrossAlignment.center,
                            direction: Axis.vertical,
                            alignment: WrapAlignment.center,
                            children: [
                              Neumorphic(
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
                              Neumorphic(
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
                            ],
                          )
                        : Row(
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
                              const SizedBox(width: 10),
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
                          )
                    // Column(
                    //     children: [
                    //       Flexible(
                    //         flex: 1,
                    //         fit: FlexFit.loose,
                    //         child: Neumorphic(
                    //           padding: const EdgeInsets.all(10),
                    //           style: const NeumorphicStyle(
                    //               oppositeShadowLightSource: true,
                    //               depth: -5,
                    //               intensity: 0.8,
                    //               lightSource: LightSource.topLeft),
                    //           child: ClipRRect(
                    //             borderRadius: BorderRadius.circular(8),
                    //             child: const VideoPlayerWidget(
                    //                 videoUrl: 'assets/videos/v1.mp4'),
                    //           ),
                    //         ),
                    //       ),
                    //       const SizedBox(height: 10),
                    //       Flexible(
                    //         flex: 1,
                    //         fit: FlexFit.loose,
                    //         child: Neumorphic(
                    //           padding: const EdgeInsets.all(10),
                    //           style: const NeumorphicStyle(
                    //               oppositeShadowLightSource: true,
                    //               depth: -5,
                    //               intensity: 0.8,
                    //               lightSource: LightSource.topLeft),
                    //           child: ClipRRect(
                    //             borderRadius: BorderRadius.circular(8),
                    //             child: const VideoPlayerWidget(
                    //                 videoUrl: 'assets/videos/v2.mp4'),
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    ),
                const SizedBox(height: 20),
                Wrap(
                  alignment: WrapAlignment.center,
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
                    ? SizedBox(
                        width: screenWidth / 3,
                        child: const TextFieldCustom(
                          label: "Nombre",
                          hint: "Escribe tu nombre",
                        ),
                      )
                    : const TextFieldCustom(
                        label: "Nombre",
                        hint: "Escribe tu nombre",
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}
