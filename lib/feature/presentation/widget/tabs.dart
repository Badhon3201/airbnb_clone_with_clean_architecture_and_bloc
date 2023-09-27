// create tab bar properly later

import 'package:clean_code_with_bloc/core/utils/reponsive_ui_service.dart';
import 'package:flutter/material.dart';

import 'tab_bar_item.dart';

class TabsWidget extends StatelessWidget {
  const TabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, left: 10.w),
      child: SizedBox(
        height: 46.h,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            const TabItem(
              text: 'Rooms',
              imageUrl: 'assets/images/rooms.jpeg',
            ),
            SizedBox(
              width: 30.w,
            ),
            const TabItem(
              text: 'Pools',
              imageUrl: 'assets/images/pool.jpeg',
            ),
            SizedBox(
              width: 30.w,
            ),
            const TabItem(
                text: 'Beachfront', imageUrl: 'assets/images/beachfront.jpeg'),
            SizedBox(
              width: 30.w,
            ),
            const TabItem(text: 'Lakes', imageUrl: 'assets/images/lakes.jpeg'),
            SizedBox(
              width: 30.w,
            ),
            const TabItem(
              imageUrl: 'assets/images/views.jpeg',
              text: 'Amazing views',
            ),
            SizedBox(
              width: 30.w,
            ),
            const TabItem(
                text: 'Islands', imageUrl: 'assets/images/palm-tree.png'),
            SizedBox(
              width: 30.w,
            ),
            const TabItem(text: 'Caves', imageUrl: 'assets/images/cave.png'),
            SizedBox(
              width: 30.w,
            ),
            const TabItem(
              text: 'Deserts',
              imageUrl: 'assets/images/cactus.png',
            ),
            SizedBox(
              width: 30.w,
            ),
            const TabItem(
                text: 'Tropical', imageUrl: 'assets/images/island.png'),
            SizedBox(
              width: 30.w,
            ),
            const TabItem(
              text: 'Creative spaces',
              imageUrl: 'assets/images/art.png',
            ),
            SizedBox(
              width: 30.w,
            ),
            SizedBox(
              width: 30.w,
            ),
            const TabItem(
              text: 'Mansions',
              imageUrl: 'assets/images/villa.png',
            ),
            SizedBox(
              width: 30.w,
            ),
          ],
        ),
      ),
    );
  }
}
