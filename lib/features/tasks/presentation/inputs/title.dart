
import 'package:formz/formz.dart';

enum TitleError { empty, length }

class TitleTask extends FormzInput<String, TitleError> {

  const TitleTask.pure() : super.pure('');

  const TitleTask.dirty(super.value) : super.dirty();

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == TitleError.empty) return 'El campo es requerido';
    return null;
  }

  @override
  TitleError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return TitleError.empty;
    return null;
  }
}
