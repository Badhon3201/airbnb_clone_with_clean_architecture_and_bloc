import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/utils/responsive_ui_service.dart';
import 'feature/presentation/views/category_view.dart';
import 'injection_container.dart';

void main() async {
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Architecture',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ShipmentView(),
      builder: (context, child) {
        // Your figma design size
        ResponsiveUIService().init(const Size(375, 812), context);
        return SafeArea(child: child!);
      },
    );
  }
}
