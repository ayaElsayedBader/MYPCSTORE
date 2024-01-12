import 'package:flutter/material.dart';

import '../../../../../core/manger/size_app.dart';
import '../../../../../core/manger/string_app.dart';

class TextFieldSearch extends StatelessWidget {
  const TextFieldSearch(
      {super.key, required this.searchController, this.onChanged});

  final TextEditingController searchController;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
            vertical: SizeApp.size5, horizontal: SizeApp.size25),
        child: Container(
          alignment: Alignment.center,
          height: SizeApp.size55,
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(SizeApp.size20),
          ),
          child: TextField(
            style: const TextStyle(
              color: Colors.white,
            ),
            controller: searchController,
            decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                border: InputBorder.none,
                suffixText: StringApp.searchLap,
                suffixStyle: TextStyle(color: Colors.white)),
            onChanged: onChanged,
          ),
        ));
  }
}
