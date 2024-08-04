import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'animate_event.dart';
part 'animate_state.dart';

class AnimateBloc extends Bloc<AnimateEvent, AnimateState> {
  AnimateBloc() : super(const AnimateState()) {
    on<AnimateEvent>((event, emit) {});
    on<SetIconFaceEvent>(_setIconFaceEvent);
    on<SetIconCloudEvent>(_setIconCloudEvent);
    on<SetIconPhoneEvent>(_setIconPhoneEvent);
  }

  void _setIconFaceEvent(SetIconFaceEvent event, Emitter<AnimateState> emit) {
    emit(state.copyWith(iconStates: IconStates.face));
  }

  void _setIconCloudEvent(SetIconCloudEvent event, Emitter<AnimateState> emit) {
    emit(state.copyWith(iconStates: IconStates.cloud));
  }

  void _setIconPhoneEvent(SetIconPhoneEvent event, Emitter<AnimateState> emit) {
    emit(state.copyWith(iconStates: IconStates.phone));
  }
}
