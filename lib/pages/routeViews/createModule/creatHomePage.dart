import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/utils/appConfig.dart';

class CreathomepageScreen extends StatelessWidget {
  const CreathomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:  18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              const SizedBox(height: 50),
              Text("What would you like to create?",style:Get.textTheme.headlineSmall),
              const SizedBox(height: 20),
              for (var item in Appconfig().createOptions)
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: item['color'].withOpacity(0.8),
                    gradient: LinearGradient(
                      colors: [
                        item['color'],
                        item['color'].withOpacity(0.8),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(item['icon'], size: 40, color: Colors.black54),
                      const SizedBox(width: 20),
                      Text(item['title'], style: Get.textTheme.headlineSmall?.copyWith(color: Colors.black54)),
                    ],
                  ),
                ),
            ]
          ),
        ),
      ),
    );
  }
}