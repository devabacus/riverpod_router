class LoginState {
  final String login;
  final String password;
  final bool isLoading;

  LoginState({this.login = '', this.password = '', this.isLoading = false});

  LoginState copyWith({String? login, String? password, bool? isloading}) {
    return LoginState(
      login: login ?? this.login,
      password: password ?? this.password,
      isLoading: isloading ?? isLoading,
    );
  }
}
