import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:skeuomorphism/presentation/screens/home/home_screen.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return MultiBlocProvider(providers: [
  //     BlocProvider(create: (_) => CounterBloc()),
  //     BlocProvider(create: (_) => AnimationBloc()),
  //   ], child: const AppView());
  // }

  @override
  Widget build(BuildContext context) {
    return const NeumorphicApp(
      // routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        defaultTextColor: Color(0xFF3E3E3E),
        accentColor: Colors.grey,
        variantColor: Colors.black38,
        depth: 8,
        intensity: 0.65,
        baseColor: Color(0xEFEEEEEE),
        lightSource: LightSource.topLeft,
      ),
      // darkTheme: NeumorphicThemeData(
      //   baseColor: Color(0xFF3E3E3E),
      //   lightSource: LightSource.topLeft,
      //   depth: 6,
      // ),
      home: HomeScreen(),
    );
  }
}
