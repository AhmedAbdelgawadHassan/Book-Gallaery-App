import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/Data/Models/book_model/book_model.dart';
import 'package:bookly/Features/home/Domain/Repo/Home_Repo.dart';
import 'package:meta/meta.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());
   final HomeRepo homeRepo;

  Future<void> FeatchNewestBooks() async {
    emit(NewestBookLoading());
    var result = await homeRepo.FeatchNewestBooks();
    result.fold(
      (failure) => emit(NewestBookFailure(failure.errMessage)),
      (books) => emit(NewestBookSuccess(books)),
    );
  }
}
