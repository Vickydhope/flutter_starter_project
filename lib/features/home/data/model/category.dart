import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

part 'category.g.dart';

@freezed
class Category with _$Category {
  const factory Category(
      {required String idCategory,
      required String strCategory,
      required String strCategoryThumb,
      required String strCategoryDescription}) = _Category;

  factory Category.fromJson(Map<String, Object?> json) =>
      _$CategoryFromJson(json);
}
