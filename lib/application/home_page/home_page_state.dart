part of 'home_page_cubit.dart';

@freezed
abstract class HomePageState with _$HomePageState {
  const factory HomePageState({
    @required int selectedIndex,
    @required bool isLoading,
    @required List<Offer> offers,
    @required User currentUser,
  }) = _HomePageState;
  factory HomePageState.initial() => HomePageState(
        selectedIndex: 0,
        offers: [],
        isLoading: false,
        currentUser: User(),
      );
}
