import 'package:flutter/material.dart';

class NotificationPermissionView extends StatelessWidget {
  const NotificationPermissionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children:[
          const SizedBox(height: 50),
          const Text(
            "Notification Permission",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text(
            "We need your permission to send you notifications.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Handle permission request
            },
            child: const Text("Grant Permission"),
          ),
        ]
      )
    );
  }
}