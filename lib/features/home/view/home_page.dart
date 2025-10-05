import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.userData, required this.phoneNo});
  final String userData;
  final String phoneNo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "🎉 Welcome to Home Page!\n userData : $userData \n phone : $phoneNo",
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.go(
                '/',
                extra: {
                  "dummyCallback": () {
                    log("hello my name is chintan hey hey hey");
                  },
                  "username": "Chintan S Khutwad",
                },
              ),
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
