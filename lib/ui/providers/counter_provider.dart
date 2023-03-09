import 'package:flutter/widgets.dart';
import 'package:provider_page/data/repo/counter_repository.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;
  int get getCounter => _counter;

  var counterRepo = CounterRepository();

  void incrementCounter() {
    _counter = counterRepo.incrementCounter(_counter);
    notifyListeners();
  }

  void decrementCounter() {
    _counter = counterRepo.decrementCounter(_counter);
    notifyListeners();
  }
}
