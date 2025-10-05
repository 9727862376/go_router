import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
    required this.username,
    required this.dummyCallback,
  });
  final String username;
  final Function dummyCallback;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    widget.dummyCallback();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("🎉 Welcome to Login Page! \n ${widget.username}"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.go(
                '/home',
                extra: {"userData": "Chintan K", "phoneNo": "1234567890"},
              ),
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
