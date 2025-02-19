import 'package:dartweek/app/models/user_model.dart';

abstract class AuthRepsitory {
  Future<UserModel> login(String email, String password);
  Future<UserModel> register(String name, String email, String password);
}