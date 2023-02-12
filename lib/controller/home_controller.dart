import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {
  int currentIndex = 0;
  bool isLiked = true;
  bool isfollowed = false;

  setIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  onChange() {
    isLiked = !isLiked;
    notifyListeners();
  }

  onButtonChange() {
    isfollowed = !isfollowed;
    notifyListeners();
  }
}
