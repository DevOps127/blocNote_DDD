import 'package:blocNote_DDD/domain/core/failures.dart';
import 'package:blocNote_DDD/domain/core/value_objects.dart';
import 'package:blocNote_DDD/domain/core/value_validator.dart';
import 'package:dartz/dartz.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validatedEmailAdress(input));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(validatedPassword(input));
  }

  const Password._(this.value);
}
