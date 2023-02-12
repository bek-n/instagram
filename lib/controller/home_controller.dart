import 'package:flutter/cupertino.dart';

import '../view/domen/model/Single_User_model.dart';
import '../view/domen/repository/repo.dart';

class HomeController extends ChangeNotifier {
  int currentIndex = 0;
  bool isLiked = true;
  bool isfollowed = false;
  Singleuser? user;
  bool isLoading = true;

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

  getInfo() async {
    isLoading;
    notifyListeners();
    user = await GetInfo.getSingleUserHome();
    isLoading = false;
    notifyListeners();

    print('User: $user');
  }
}
