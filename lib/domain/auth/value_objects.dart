import 'package:blocNote_DDD/domain/core/failures.dart';
import 'package:blocNote_DDD/domain/core/value_objects.dart';
import 'package:blocNote_DDD/domain/core/value_validator.dart';
import 'package:dartz/dartz.dart';

class EmailAdress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAdress(String input) {
    assert(input != null);
    return EmailAdress._(validatedEmailAdress(input));
  }

  const EmailAdress._(this.value);
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(validatedPassword(input));
  }

  const Password._(this.value);
}
