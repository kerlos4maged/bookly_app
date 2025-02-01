import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:bookly_app/features/home/presentation/view_models/features_cubit/features_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksCubit extends Cubit<BooksStates> {
  BooksCubit(this._homeRepo) : super(InitailBooksState());

  final HomeRepo _homeRepo;

  Future<void> fetchHomeData() async {
    emit(LoadingBooks());
    var data = await _homeRepo.featuresBooks();
    data.fold(
      (faulier) {
        emit(
          ErrorBookState(message: faulier.message),
        );
      },
      (books) {
        emit(
          SuccessBooks(books: books),
        );
      },
    );
  }
}
