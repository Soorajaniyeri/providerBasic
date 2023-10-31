import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerstudy/controllers/countercontroller.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            Provider.of<CounterController>(context, listen: false)
                .minus1Counter();
          }),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text("Decrement"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Provider.of<CounterController>(context).counter.toString(),
              style: const TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
