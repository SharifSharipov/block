abstract class AuthState {}

class InitialState extends AuthState {}

class SignInState extends AuthState {
  final String login;
  final String password;

  SignInState({required this.login, required this.password});
}

class SignUpState extends AuthState {
  final String login;
  final String username;
  final String password;

  SignUpState({
    required this.login,
    required this.password,
    required this.username,
  });
}

class LoggedState extends AuthState {}

class UnAuthenticatedState extends AuthState {}
