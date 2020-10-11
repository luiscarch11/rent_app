import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rent_design/domain/offer.dart';
import 'package:rent_design/domain/user.dart';
import 'package:rent_design/infrastructure/mock_home_page_implementation.dart';

part 'home_page_state.dart';
part 'home_page_cubit.freezed.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageState.initial());
  final _mockHomePageImplementation = MockHomePageImplementation();
  void find() async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );
    final response = await _mockHomePageImplementation.find();

    emit(
      state.copyWith(
        isLoading: false,
        offers: response,
      ),
    );
  }

  void findUser() async {
    final user = await _mockHomePageImplementation.findUser();
    emit(
      state.copyWith(
        currentUser: user,
      ),
    );
  }

  void changedSelectedIcon(int newIconNumber) {
    emit(state.copyWith(
      selectedIndex: newIconNumber,
    ));
  }
}
