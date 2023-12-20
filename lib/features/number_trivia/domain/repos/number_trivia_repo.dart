import 'package:dartz/dartz.dart';
import 'package:numbers_trivia/core/error/failuers.dart';
import 'package:numbers_trivia/features/number_trivia/domain/entities/number_trivia_entities.dart';

abstract class NumberTriviaRepo {
  Future<Either<Failuer, NumberTriviaEntiteies>> getConcreteNumberTrivia(
      int number);
  Future<Either<Failuer, NumberTriviaEntiteies>> getRandomNumberTrivia();
}
