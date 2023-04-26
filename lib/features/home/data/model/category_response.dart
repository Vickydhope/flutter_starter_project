import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';

part 'category_response.freezed.dart';

part 'category_response.g.dart';

@freezed
class CategoryResponse with _$CategoryResponse {
  const factory CategoryResponse({required List<Category> categories}) =
      _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, Object?> json) =>
      _$CategoryResponseFromJson(json);
}
