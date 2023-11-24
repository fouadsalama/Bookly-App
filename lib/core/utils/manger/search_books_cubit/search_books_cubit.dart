import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../../Features/home/data/repos/home_repo.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.homeRepo) : super(SearchBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSearchBooks({required String subject}) async {
    emit(SearchBooksLoading());
    var results = await homeRepo.fetchSearchBooks(subject: subject);
    results.fold(
      (failure) {
        emit(SearchBooksFailure(failure.errorMessage));
      },
      (books) {
        emit(SearchBooksSuccess(books));
      },
    );
  }
}
