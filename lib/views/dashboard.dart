import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Programs Dashboard",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white60,
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                    padding: WidgetStatePropertyAll(EdgeInsets.all(20))),
                onPressed: () {
                  Navigator.pushNamed(context, '/arithmetic');
                },
                child: const Text(
                  "Arithmetic",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20,
              ),
              ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                    padding: WidgetStatePropertyAll(EdgeInsets.all(20))),
                onPressed: () {
                  Navigator.pushNamed(context, '/area-of-circle');
                },
                child: const Text(
                  "Area of Circle",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20,
              ),
              ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                    padding: WidgetStatePropertyAll(EdgeInsets.all(20))),
                onPressed: () {
                  Navigator.pushNamed(context, '/simple-interest');
                },
                child: const Text(
                  "Simple Interest",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
