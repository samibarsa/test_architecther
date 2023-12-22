import 'package:dartz/dartz.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:numbers_trivia/features/number_trivia/domain/entities/number_trivia_entities.dart';
import 'package:numbers_trivia/features/number_trivia/domain/repos/number_trivia_repo.dart';
import 'package:numbers_trivia/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';

import 'git_concrete_number_trivia_test.mocks.dart';

//class MockNumberTriviaRepository extends Mock
//  implements NumberTriviaRepository {}
@GenerateMocks([NumberTriviaRepository])
// Import generated mock classes

void main() {
  late GetConcreteNumberTrivia usecase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });

  const tNumber = 1;
  const tNumberTrivia = NumberTriviaEntiteies(number: 1, text: 'test');

  test(
    'should get trivia for the number from the repository',
    () async {
      when(mockNumberTriviaRepository.getConcreteNumberTrivia(any))
          .thenAnswer((_) async => const Right(tNumberTrivia));
      final result = await usecase(param: const Params(number: tNumber));
      expect(result, const Right(tNumberTrivia));
      verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber))
          .called(1);
      verifyNoMoreInteractions(mockNumberTriviaRepository);
    },
  );
}
