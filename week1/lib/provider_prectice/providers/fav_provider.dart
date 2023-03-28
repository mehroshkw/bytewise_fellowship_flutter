import 'package:flutter/foundation.dart';

class FavProvider extends ChangeNotifier {
  List<int> _selected = [];
  List<int> get selected => _selected;

  void addItem(int val) {
    _selected.add(val);
    notifyListeners();
  }

  void remove(value) {
    _selected.remove(value);
notifyListeners();
  }
}
