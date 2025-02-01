import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:bookly_app/features/home/presentation/view_models/newest_cubit/newest_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestFeaturesBooks extends Cubit<NewestBooksStates> {
  NewestFeaturesBooks(this._homeRepo) : super(InitailNewestBooksState());
  final HomeRepo _homeRepo;

  Future<void> newestBooks() async {
    emit(LoadingNewestBooks());
    final data = await _homeRepo.fetchNewsetBook();
    data.fold(
      (fauiler) {
        emit(
          ErrorNewestBookstate(message: fauiler.message),
        );
      },
      (books) {
        emit(
          SuccessNewestBooks(books: books),
        );
      },
    );
  }
}
