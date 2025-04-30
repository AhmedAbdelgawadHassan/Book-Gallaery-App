import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/Data/Models/book_model/book_model.dart';
import 'package:bookly/Features/home/Domain/Repo/Home_Repo.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.FeatchFeaturedBooks();
    result.fold(
      (failure) => emit(FeaturedBooksFailure(failure.errMessage)),
      (books) => emit(FeaturedBooksSuccess(books)),
    );
  }
}
 