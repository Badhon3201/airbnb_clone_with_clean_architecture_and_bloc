import 'package:clean_code_with_bloc/core/utils/reponsive_ui_service.dart';
import 'package:flutter/material.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.r),
      child: Material(
        elevation: 5.0,
        shadowColor: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(40.r),
        child: TextField(
          maxLines: 2,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.r, vertical: 10.r),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            border: InputBorder.none,
            hintText: 'Where to? \nAnywhere • Any week • Add guests',
            hintMaxLines: 2,
            hintStyle: const TextStyle(
              color: Colors.black,
            ),
            suffixIcon: const Icon(
              Icons.tune,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
