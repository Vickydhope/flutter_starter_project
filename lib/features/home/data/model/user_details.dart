import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details.freezed.dart';

part 'user_details.g.dart';

@freezed
class UserDetails with _$UserDetails {
  const factory UserDetails(
      {required String firstName,
      required String lastName,
      required String mobile,
      required String email}) = _UserDetails;

  factory UserDetails.fromJson(Map<String, Object?> json) =>
      _$UserDetailsFromJson(json);
}
