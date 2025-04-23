part of 'newest_book_cubit.dart';

@immutable
sealed class NewestBookState {}

final class NewestBookInitial extends NewestBookState {}
final class NewestBookLoading extends NewestBookState {}
final class NewestBookSuccess extends NewestBookState {
  final List<BookModel> books;

  NewestBookSuccess(this.books);
}
final class NewestBookFailure extends NewestBookState {
  final String errorMessage;
   NewestBookFailure(this.errorMessage);
}
