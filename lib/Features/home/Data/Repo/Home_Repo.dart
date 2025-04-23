import 'package:bookly/Core/Errors/Failures.dart';
import 'package:bookly/Features/home/Data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> FeatchFeaturedBooks();
  Future<Either<Failures, List<BookModel>>> FeatchNewestBooks();
}
