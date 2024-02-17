import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/home/home_service.dart';
import 'package:netflix/domain/home/model/home/home/home_repo.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeService _homeService;
  HomeBloc(this._homeService) : super(HomeState.initial()) {
    on<TopTenRated>((event, emit) async {
      //send    loading   to   ui
      emit(const HomeState(
          topTenRated: [],
          releasedYear: [],
          trending: [],
          isLoading: true,
          hasError: false));

      //get    data   from remote
      final _result = await _homeService.getTopTenShowsInIndia();
      final newState = _result.fold((MainFailure failure) {
        return const HomeState(
            topTenRated: [],
            releasedYear: [],
            trending: [],
            isLoading: false,
            hasError: true);
      }, (HomeRepo repo) {
        return HomeState(
            topTenRated: repo.results,
            releasedYear: state.releasedYear,
            trending: state.trending,
            isLoading: false,
            hasError: false);
      });
      emit(newState);
    });
    /*
    =============================================
    
    */
    on<ReleasedYear>((event, emit) async {
      //send    loading   to   ui
      emit(const HomeState(
          topTenRated: [],
          releasedYear: [],
          trending: [],
          isLoading: true,
          hasError: false));

      //get    data   from remote
      final _result = await _homeService.getRealeasedInThePastYear();
      final newState = _result.fold((MainFailure failure) {
        return const HomeState(
            topTenRated: [],
            releasedYear: [],
            trending: [],
            isLoading: false,
            hasError: true);
      }, (HomeRepo repo) {
        print(repo.results);
        return HomeState(
            topTenRated: state.topTenRated,
            releasedYear: repo.results,
            trending: state.trending,
            isLoading: false,
            hasError: false);
      });
      emit(newState);
    });
    /*
    =============================================
    
    */
    on<Trending>((event, emit) async {
      //send    loading   to   ui
      emit(const HomeState(
          topTenRated: [],
          releasedYear: [],
          trending: [],
          isLoading: true,
          hasError: false));

      //get    data   from remote
      final _result = await _homeService.getRealeasedInThePastYear();
      final newState = _result.fold((MainFailure failure) {
        return const HomeState(
            topTenRated: [],
            releasedYear: [],
            trending: [],
            isLoading: false,
            hasError: true);
      }, (HomeRepo repo) {
        return HomeState(
            topTenRated: state.topTenRated,
            releasedYear: state.releasedYear,
            trending: repo.results,
            isLoading: false,
            hasError: false);
      });
      emit(newState);
    });
    /*
    ==============================================
    
    */
  }
}
