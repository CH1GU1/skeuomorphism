part of 'animate_bloc.dart';

@immutable
sealed class AnimateEvent extends Equatable {
  const AnimateEvent();

  @override
  List<Object> get props => [];
}

class SetIconFaceEvent extends AnimateEvent {
  const SetIconFaceEvent();

  @override
  List<Object> get props => [];
}

class SetIconCloudEvent extends AnimateEvent {
  const SetIconCloudEvent();

  @override
  List<Object> get props => [];
}

class SetIconPhoneEvent extends AnimateEvent {
  const SetIconPhoneEvent();

  @override
  List<Object> get props => [];
}
