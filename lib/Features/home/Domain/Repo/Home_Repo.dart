// ignore_for_file: non_constant_identifier_names

import 'package:bookly/Core/Errors/Failures.dart';
import 'package:bookly/Features/home/Domain/Entities/BooksEntity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookEntity>>> FeatchFeaturedBooks(); // Either class to return 2 things . one for sucess(list of Book entity),and one for Error (Failure class)
  Future<Either<Failures, List<BookEntity>>> FeatchNewestBooks();
}
