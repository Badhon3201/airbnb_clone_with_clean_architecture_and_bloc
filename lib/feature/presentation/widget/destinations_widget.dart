import 'package:flutter/material.dart';
import '../../domain/entities/destination.dart';
import 'destination_list_tile.dart';

class DestinationsWidget extends StatelessWidget {
  const DestinationsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: ListView.separated(
          physics: const ScrollPhysics(),
          padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 30),
          shrinkWrap: true,
          itemCount: destinations.length,
          itemBuilder: (BuildContext context, int index) {
            final destination = destinations[index];
            return DestinationListTile(
              destination: destination,
              index: index,
            );
          },
        ),
      ),
    );
  }
}
