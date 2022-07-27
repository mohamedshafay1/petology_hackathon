import 'package:petology/Model/Auth_login_Register/Login/LoginModel.dart';

abstract class AuthStates {}

class AuthInitialState extends AuthStates {}
class ChangeHover extends AuthStates {}

class LoginLoadState extends AuthStates{}
class LoginSuccessState extends AuthStates{
  LoginModel loginModel ;

  LoginSuccessState(this.loginModel);
}
class LoginErrorState extends AuthStates{}
class RegisterLoadState extends AuthStates{}
class RegisterSuccessState extends AuthStates{

}
class RegisterErrorState extends AuthStates{}
