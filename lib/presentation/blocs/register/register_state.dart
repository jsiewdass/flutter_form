part of 'register_cubit.dart';

enum FormStatus { valid, invalid, validating, posting }

class RegisterFormState extends Equatable {
  final bool isValid;
  final FormStatus formStatus;
  final Username username;
  final String email;
  final Password password;
  const RegisterFormState(
      {this.isValid = false,
      this.formStatus = FormStatus.invalid,
      this.username = const Username.pure(),
      this.email = '',
      this.password = const Password.pure()});

  RegisterFormState copyWith(
          {bool? isValid,
          FormStatus? formStatus,
          Username? username,
          String? email,
          Password? password}) =>
      RegisterFormState(
          formStatus: formStatus ?? this.formStatus,
          username: username ?? this.username,
          email: email ?? this.email,
          password: password ?? this.password);
  @override
  List<Object> get props => [formStatus, username, email, password];
}
