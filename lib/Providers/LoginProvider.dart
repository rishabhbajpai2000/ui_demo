import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ui_demo/Utils/utils.dart';
import 'package:ui_demo/robert_fox.dart';

import '../enter_otp.dart';

class LoginProvider with ChangeNotifier {
  String selectedCountryCode = '+91'; // Default selected country code
  TextEditingController _numberController = TextEditingController();

  TextEditingController get numberController => _numberController;
  final FirebaseAuth auth = FirebaseAuth.instance;
  static String verificationId = "";

  set numberController(TextEditingController value) {
    _numberController = value;
    notifyListeners();
  }

  void changeCountryCode(String value) {
    selectedCountryCode = value;
    notifyListeners();
  }

  Future<bool> sendOtp(String number, context) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: "+91$number",
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (verificationId, forceResendingToken) {
          LoginProvider.verificationId = verificationId;
          print(verificationId);
          notifyListeners();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const EnterOtp()),
          );
        },
        codeAutoRetrievalTimeout: (String verificationId) {});

    return true;
  }

  Future<void> checkOtp(String otp, BuildContext context) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: LoginProvider.verificationId, smsCode: otp);
      await auth.signInWithCredential(credential);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const RobertFox()),
      );
    } catch (e) {
      Utils().toastMessage(e.toString());
    }
  }
}
