import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify/view/userlayout/cubit/states.dart';


class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(IntialState()); // need intial state in the super

  static LayoutCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> bottomScreens = [
  ];

  void Changebottom(int index) {
    currentIndex = index;
    emit(ChageBottomNavState());
  }
}
