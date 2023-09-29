import 'package:bloc/bloc.dart';

import 'landing_page_event.dart';
import 'landing_page_state.dart';

class LandingPageBlock extends Bloc<LandingPageEvent, LandingPagestate> {
  LandingPageBlock() : super(LandingPageInital(tabindex: 0)) {
    on<LandingPageEvent>((event, emit) {
      if (event is Tanchange) {
        emit(LandingPageInital(tabindex: event.tabIndex));
      }
    });
  }
}
