import 'package:animate_do/animate_do.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:skeuomorphism/presentation/blocs/animate_bloc/animate_bloc.dart';
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
          'Neumorfismo',
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: BlocBuilder<AnimateBloc, AnimateState>(
                    builder: (context, state) {
                      IconData icon;
                      switch (state.iconStates) {
                        case IconStates.face:
                          icon = Icons.tag_faces_sharp;
                          break;
                        case IconStates.cloud:
                          icon = Icons.cloud_download_rounded;
                          break;
                        case IconStates.phone:
                          icon = Icons.phone_android_rounded;
                          break;
                      }
                      return FadeIn(
                        key: ValueKey(state.iconStates),
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        animate: true,
                        child: NeumorphicIcon(
                          icon,
                          size: 60,
                          style: const NeumorphicStyle(
                            shape: NeumorphicShape.convex,
                            depth: 2,
                            surfaceIntensity: 0.85,
                          ),
                        ),
                      );
                    },
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
                  icon: Icons.tag_faces_sharp,
                  onPressed: () {
                    context.read<AnimateBloc>().add(const SetIconFaceEvent());
                  },
                ),
                NeumorphicIconButton(
                  icon: Icons.cloud_download_rounded,
                  onPressed: () {
                    context.read<AnimateBloc>().add(const SetIconCloudEvent());
                  },
                ),
                NeumorphicIconButton(
                  icon: Icons.phone_android_rounded,
                  onPressed: () {
                    context.read<AnimateBloc>().add(const SetIconPhoneEvent());
                  },
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
