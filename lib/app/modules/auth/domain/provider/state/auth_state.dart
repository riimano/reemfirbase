class AuthState {
  final bool isAuth;
  final bool isLoading;
  final String error;

  AuthState(
      {required this.isAuth, required this.isLoading, required this.error});

  AuthState copyWith({bool? isAuth, bool? isLoading, String? error}) {
    return AuthState(
        isAuth: isAuth ?? this.isAuth,
        isLoading: isLoading ?? this.isLoading,
        error: error ?? this.error);
  }
}
