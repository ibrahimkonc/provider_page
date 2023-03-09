import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_page/ui/providers/counter_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var counterProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                  child: Center(
                child: Consumer<CounterProvider>(
                  builder: (context, counterProvider, child) => Text(
                      counterProvider.getCounter.toString(),
                      style: const TextStyle(
                          fontSize: 80, fontWeight: FontWeight.w600)),
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(20)),
                      onPressed: () => counterProvider.incrementCounter(),
                      child: const Text("Increment")),
                  const Spacer(),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(20)),
                      onPressed: () => counterProvider.decrementCounter(),
                      child: const Text("Decerement")),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
