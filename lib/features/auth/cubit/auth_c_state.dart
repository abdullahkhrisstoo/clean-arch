abstract class AuthState {}

class AuthInitial extends AuthState {}

class ToggelPassState extends AuthState {}

class LoginState extends AuthState {}

class RegisterState extends AuthState {}

class AgreeTermsState extends AuthState {}

class Above18State extends AuthState {}

class PhoneVerfiyState extends AuthState {}
class ForgetPassButton extends AuthState {}
class SetNewPasswordState extends AuthState {}
