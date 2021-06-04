import 'package:core_box/models/user_model.dart';
import 'package:flutter/cupertino.dart';

@immutable
class AuthState{

  final UserModel currentUser;
  final bool isLoading;

  AuthState({
    this.currentUser,
    this.isLoading = false,
});

  AuthState copyWith({
  UserModel currentUser,
    bool isLoading
}){
    return AuthState(
      currentUser: currentUser?? this.currentUser,
      isLoading: isLoading ?? this.isLoading,
    );
  }

}