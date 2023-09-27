import 'package:clean_code_with_bloc/feature/presentation/page/explore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/utils/reponsive_ui_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Explore(),
      builder: (context, child) {
        // Your figma design size
        ResponsiveUIService().init(const Size(375, 812), context);
        return SafeArea(child: child!);
      },
    );
  }
}
