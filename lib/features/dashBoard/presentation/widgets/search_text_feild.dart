import 'package:flutter/material.dart';
import 'package:motel/core/color_manager.dart';
import 'package:motel/core/componant.dart';
import 'package:motel/core/strings_manager.dart';
import 'package:motel/features/searchScreen/search_screen.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(0.0, -510.0, 0),
      padding: EdgeInsetsDirectional.only(top: 60, start: 16, end: 16),
      child: TextField(
        readOnly: true,
        onTap: () {
          navigateTo(context, SearchScreen());
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
          filled: true,
          fillColor: ColorManager.white,
          prefixIcon: const Icon(
            Icons.search,
            color: ColorManager.primary,
          ),
          hintStyle: const TextStyle(color: ColorManager.grey, fontSize: 18),
          hintText: AppStrings.whereAreYouGoing,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(width: 0, color: ColorManager.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:
                BorderSide(width: 0, color: ColorManager.white), //<-- SEE HERE
          ),
        ),
      ),
    );
  }
}
