import 'package:equatable/equatable.dart';
import 'package:flutter_starter_project/core/response/api_response.dart';

abstract class UseCase<Type, Params> {
  Future<Type> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
