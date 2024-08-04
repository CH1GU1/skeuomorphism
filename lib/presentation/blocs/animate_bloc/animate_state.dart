part of 'animate_bloc.dart';

enum IconStates { face, cloud, phone }

class AnimateState extends Equatable {
  final IconStates iconStates;
  const AnimateState({this.iconStates = IconStates.face});

  AnimateState copyWith({
    IconStates? iconStates,
  }) =>
      AnimateState(
        iconStates: iconStates ?? this.iconStates,
      );

  @override
  List<Object> get props => [iconStates];
}
