import 'package:flutter/foundation.dart';

class listfooddetailprov with ChangeNotifier {
  String phoneNumber = "+6282136619175";

  void updatePhoneNumber(String newPhoneNumber) {
    phoneNumber = newPhoneNumber;
    notifyListeners();
  }
}