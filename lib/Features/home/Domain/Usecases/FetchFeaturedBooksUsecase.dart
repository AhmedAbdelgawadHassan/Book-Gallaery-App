// ignore_for_file: non_constant_identifier_names

import 'package:bookly/Core/Errors/Failures.dart';
import 'package:bookly/Features/home/Domain/Entities/BooksEntity.dart';
import 'package:bookly/Features/home/Domain/Repo/Home_Repo.dart';
import 'package:dartz/dartz.dart';

class Fetchfeaturedbooksusecase {
  final HomeRepo homeRepo;

  Fetchfeaturedbooksusecase(this.homeRepo);
  Future<Either<Failures, List<BookEntity>>> FeatchFeaturedBooks() {

    //check Permissions 
    return homeRepo.FeatchFeaturedBooks();
  }
}
