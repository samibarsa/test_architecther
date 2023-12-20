import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:numbers_trivia/features/number_trivia/domain/repos/number_trivia_repo.dart';
import 'package:numbers_trivia/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';

class MockNumberTriviaRepo extends Mock implements NumberTriviaRepo {}

void main() {
  // ignore: unused_local_variable
  GetConcreteNumberTrivia usecase;
  MockNumberTriviaRepo mockNumberTriviaRepo;
  setUp(() {
    mockNumberTriviaRepo = MockNumberTriviaRepo();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepo);
  });
}
