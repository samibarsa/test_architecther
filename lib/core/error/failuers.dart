import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
abstract class Failuer extends Equatable {
  List properties;
  Failuer([this.properties = const <dynamic>[]]);

  @override
  List<Object?> get props => [properties];
}
