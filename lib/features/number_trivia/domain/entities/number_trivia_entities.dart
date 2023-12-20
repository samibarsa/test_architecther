import 'package:equatable/equatable.dart';

class NumberTriviaEntiteies extends Equatable {
  final String text;
  final int number;

  NumberTriviaEntiteies({required this.text, required this.number});

  @override
  // TODO: implement props
  List<Object?> get props {
    return [text, number];
  }
}
