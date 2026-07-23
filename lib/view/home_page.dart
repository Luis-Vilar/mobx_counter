import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_app/store/counter_store.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final store = CounterStore();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contador',
          style: TextStyle(fontSize: 36, fontWeight: .w700),
        ),
        actions: [
          IconButton(onPressed: store.increment, icon: Icon(Icons.add)),
          IconButton(onPressed: store.decrement, icon: Icon(Icons.remove)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Observer(
              builder: (context) => Text(
                store.counter.value.toString(),
                style: TextStyle(fontSize: 44, fontWeight: .w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
