// ignore_for_file: unused_catch_clause, non_constant_identifier_names


import 'package:bookly/Core/Errors/Failures.dart';
import 'package:bookly/Core/Utils/Api_Service.dart';
import 'package:bookly/Features/home/Data/Models/book_model/book_model.dart';
import 'package:bookly/Features/home/Domain/Repo/Home_Repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;
  HomeRepoImplementation( this.apiService);

  @override
  Future<Either<Failures, List<BookModel>>> FeatchNewestBooks() async {
    try {
      var data = await apiService.get(
        EndPoint: "volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming",
      ); // data is a map from api
      List<BookModel> books = []; // empty list
      for (var item in data["items"]) {
        books.add(
          BookModel.fromJson(item),   // parse 
        ); // adding the data (Items) to the list
      }
      return right(
        books,
      ); // returning the list   -- but first we need to convert it to right side of either
    } on Exception catch (e) {
      return left(
        ServerFailures(errMessage: e.toString()),
      ); // returning the left side of either (Error)
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> FeatchFeaturedBooks() async{
      try {
      var data = await apiService.get(
        EndPoint: "volumes?Filtering=free-ebooks&q=subject:Programming",
      ); // data is a map from api
      List<BookModel> books = []; // empty list
      for (var item in data["items"]) {
        books.add(
          BookModel.fromJson(item),   // parse 
        ); // adding the data (Items) to the list
      }
      return right(
        books,
      ); // returning the list   -- but first we need to convert it to right side of either
    } on Exception catch (e) {
      return left(
        ServerFailures(errMessage: e.toString()),
      ); // returning the left side of either (Error)
    }
   
  }
}


