import 'package:mobx/mobx.dart';
part 'counter_store.g.dart';

class CounterStore = CounterStoreBase with _$CounterStore;

abstract class CounterStoreBase with Store {
  @observable
  Observable<int> counter = Observable(0);

  @action
  void increment() {
    counter.value++;
  }

  @action
  void decrement() {
    if (counter.value > 0) counter.value--;
  }
}
