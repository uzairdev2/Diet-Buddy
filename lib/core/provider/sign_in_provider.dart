import 'package:flutter/material.dart';

class SignInProvider extends ChangeNotifier {
  bool _isObscured = true;

  bool get isObscured => _isObscured;

  void toggleObscure() {
    _isObscured = !_isObscured;
    notifyListeners();
  }

  bool _isObscuredConfrimPass = true;

  bool get isObscuredConfrimPass => _isObscuredConfrimPass;

  void toggleObscureConfirmPass() {
    _isObscuredConfrimPass = !_isObscuredConfrimPass;
    notifyListeners();
  }
}
