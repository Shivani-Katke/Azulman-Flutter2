import 'package:flutter/material.dart';

// NEW : Change Notifier which notifies and changes state where it is used.
class ResendChangeNotifier with ChangeNotifier {
  bool _resendOTP = false;

  bool get resendOTP => _resendOTP;

  void toggleResend() {
    _resendOTP = !_resendOTP;
    notifyListeners();
  }
}
