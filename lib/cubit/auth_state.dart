part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  final UserModel user;

  const AuthState(this.user);

  @override
  List<Object?> get props => [user];
}

class AuthInitial extends AuthState {
  const AuthInitial() : super(const UserModel(id: '', email: '', name: ''));

  @override
  List<Object?> get props => [];
}

class AuthLoading extends AuthState {
  const AuthLoading() : super(const UserModel(id: '', email: '', name: ''));

  @override
  List<Object?> get props => [];
}

class AuthSuccess extends AuthState {
  const AuthSuccess(UserModel user) : super(user);
}

class AuthFailed extends AuthState {
  final String error;
  const AuthFailed(this.error)
      : super(const UserModel(id: '', email: '', name: ''));

  @override
  List<Object> get props => [error];
}
