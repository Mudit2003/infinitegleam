import 'package:flutter_bloc/flutter_bloc.dart';

part 'food_page_body_event.dart';
part 'food_page_body_state.dart';

class FoodPageBodyBloc extends Bloc<FoodPageBodyEvent, FoodPageBodyState> {
  FoodPageBodyBloc() : super(FoodPageBodyState(0.0)) {
    on<FoodPageBodyEvent>((event, emit) {
      emit(FoodPageBodyState(event.page));
    });
  }
}

// FoodPageImageScroll event FoodPageImageScrollState
// on change grab the page value 
// grab the index value 
// 
