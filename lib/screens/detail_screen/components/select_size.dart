import 'package:fashion_shop_ui/app/app_consts.dart';
import 'package:flutter/material.dart';

class SizeModel {
  String title;

  SizeModel({required this.title});
}

class DetailScreenSelectSize extends StatefulWidget {
  const DetailScreenSelectSize({Key? key}) : super(key: key);

  @override
  State<DetailScreenSelectSize> createState() => _DetailScreenSelectSizeState();
}

class _DetailScreenSelectSizeState extends State<DetailScreenSelectSize> {
  int currentSelected = 2;

  List<SizeModel> sizesList = [
    SizeModel(title: 'S'),
    SizeModel(title: 'M'),
    SizeModel(title: 'L'),
    SizeModel(title: 'XL'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sizesList.length,
        itemBuilder: (ctx, i) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentSelected = i;
              });
            },
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: currentSelected == i
                    ? AppColors.darkGrey
                    : AppColors.darkWhite,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.lightGrey.withOpacity(.7),
                    blurRadius: 5,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                sizesList[i].title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: currentSelected == i ? Colors.white : Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
