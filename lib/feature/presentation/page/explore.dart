import 'package:clean_code_with_bloc/feature/presentation/widget/bottom_appbar_widget.dart';
import 'package:clean_code_with_bloc/feature/presentation/widget/tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/utils/reponsive_ui_service.dart';
import '../widget/destinations_widget.dart';
import '../widget/search_field_widget.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarColor: Colors.white, // status bar color
    ));
    ResponsiveUIService().init(const Size(375, 812), context);
    return const Scaffold(
      body: Column(
        children: [
          SearchFieldWidget(),
          TabsWidget(),
          DestinationsWidget(),
        ],
      ),
      bottomNavigationBar: BottomAppBarWidget(),
    );
  }
}
