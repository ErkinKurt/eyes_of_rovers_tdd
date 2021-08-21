import 'package:equatable/equatable.dart';

abstract class Entity extends Equatable {
  final int id;

  Entity(this.id);

  @override
  List<Object?> get props => [id];
}
