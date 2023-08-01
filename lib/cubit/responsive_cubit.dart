import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'responsive_state.dart';

class ResponsiveCubit extends Cubit<ResponsiveState> {
  ResponsiveCubit(Size initialSize) : super(ResponsiveState(initialSize));

  void updateScreenSize(Size newSize) {
    emit(ResponsiveState(newSize));
  }
}
