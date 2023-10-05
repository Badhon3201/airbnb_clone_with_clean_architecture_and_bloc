import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection_container.dart';
import '../bloc/category_bloc.dart';
import '../bloc/category_event.dart';
import '../bloc/category_state.dart';
import '../widgets/shipment_tile.dart';

class ShipmentView extends StatefulWidget {
  const ShipmentView({super.key});

  @override
  State<ShipmentView> createState() => _ShipmentViewState();
}

class _ShipmentViewState extends State<ShipmentView> {
  final getShippingBloc = injector<CategoryBloc>();
  late Size screenSize;
  final List<String> _shipment_type = ["Order Sent", "Order Received"];
  late String _selectedShipment;

  @override
  void initState() {
    super.initState();
    _selectedShipment = _shipment_type[0];
    getShippingBloc.add(GetAllCategory());
  }

  void onChangeSelection(String value) {
    setState(() {
      _selectedShipment = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider.value(
        value: getShippingBloc,
        child: Container(
          // color: CommonColors.white,
          padding: const EdgeInsets.all(10.0),
          child: BlocBuilder<CategoryBloc, CategoryState>(
            builder: (context, state) {
              if (state is CategoryLoading) {
                return const SizedBox();
              } else if (state is CategoryError) {
                return const SizedBox();
              } else if (state is CategoryLoaded) {
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ShipmentTile(
                      title: state.catList[index].name,
                      screenSize: screenSize,
                      isOrderSent: _selectedShipment == _shipment_type[0],
                    );
                  },
                  itemCount: state.catList.length,
                );
              }
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
