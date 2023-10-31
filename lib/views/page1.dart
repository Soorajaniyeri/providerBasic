import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerstudy/controllers/countercontroller.dart';
import 'package:providerstudy/views/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              Provider.of<CounterController>(context, listen: false)
                  .plus1Counter();
            }),
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          centerTitle: true,
          title: const Text("Increment"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Provider.of<CounterController>(context).counter.toString(),
                style: const TextStyle(fontSize: 50),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Page2();
                    }));
                  },
                  child: const Text("Go to decrement page"))
            ],
          ),
        ));
  }
}
