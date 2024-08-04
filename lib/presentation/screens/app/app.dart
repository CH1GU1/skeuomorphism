import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:skeuomorphism/presentation/blocs/animate_bloc/animate_bloc.dart';
import 'package:skeuomorphism/presentation/screens/home/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AnimateBloc(),
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return const NeumorphicApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        defaultTextColor: Color(0xFF3E3E3E),
        accentColor: Colors.grey,
        variantColor: Colors.black38,
        baseColor: Color(0xF0F0F3FF),
        lightSource: LightSource.topLeft,
      ),
      home: HomeScreen(),
    );
  }
}
