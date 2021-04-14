import 'package:stacked/stacked.dart';

class CustomerHomeViewModel extends BaseViewModel {
  bool _folded = false;
  bool get folded => _folded;

  fold(bool value) {
    _folded = value;
  }
}
