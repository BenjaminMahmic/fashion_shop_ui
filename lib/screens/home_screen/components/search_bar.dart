import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../app/app_consts.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          height: 45,
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              fillColor: AppColors.darkWhite,
              filled: true,
              contentPadding: const EdgeInsets.all(10),
              hintText: 'Search',
              prefixIcon: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset(
                  'assets/svg/search.svg',
                  height: 20,
                  width: 20,
                  color: Colors.grey,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  'assets/svg/filter.svg',
                  height: 20,
                  width: 20,
                  color: Colors.grey,
                ),
              ),
            ),
            maxLines: 1,
          ),
        ),
      ),
    );
  }
}
