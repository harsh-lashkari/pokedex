part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailInput(String emailStr) = _EmailInput;

  const factory SignInFormEvent.passwordInput(String passwordStr) =
      _PasswordInput;

  // ignore: avoid_positional_boolean_parameters
  const factory SignInFormEvent.showPassword() = _ShowPassword;

  const factory SignInFormEvent.registerWithEmailAndPasswordPressed() =
      _RegisterWithEmailAndPasswordPressed;

  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
      _SignInWithEmailAndPasswordPressed;

  const factory SignInFormEvent.signInWithGooglePressed() =
      _SignInWithGooglePressed;
}
