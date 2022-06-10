import 'package:fashion_shop_ui/app/app_consts.dart';
import 'package:fashion_shop_ui/components/app_buttons.dart';
import 'package:fashion_shop_ui/models/popular_model.dart';
import 'package:fashion_shop_ui/screens/detail_screen/components/select_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/clipper.dart';

class DetailScreen extends StatelessWidget {
  final PopularModel popularModel;

  const DetailScreen({
    Key? key,
    required this.popularModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ClipPath(
            clipper: MyClipper(),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(popularModel.picture),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  left: 15,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 15,
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('assets/pictures/popular3.jpg'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: AppColors.darkGrey,
                            width: 2,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('assets/pictures/popular2.jpg'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: AppColors.darkGrey,
                            width: 2,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('assets/pictures/popular1.jpg'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: AppColors.darkGrey,
                            width: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      popularModel.title,
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text(
                      '\$${popularModel.price}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_outlined),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/pictures/flower.jpg'),
                  fit: BoxFit.cover,
                ),
                boxShadow: const [
                  BoxShadow(color: AppColors.grey, blurRadius: 8),
                ],
              ),
            ),
            title: Row(
              children: [
                const Text(
                  'Flower Store',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 15),
                SvgPicture.asset(
                  'assets/svg/verified.svg',
                  height: 18,
                  width: 18,
                ),
              ],
            ),
            subtitle: const Text('Official Store'),
            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.darkGrey,
              ),
              child: FittedBox(
                child: Row(
                  children: const [
                    Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 16,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Following',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Select Size',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 15),
          const DetailScreenSelectSize(),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Description',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              popularModel.desc,
              style: const TextStyle(color: AppColors.grey),
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(color: AppColors.lightGrey, blurRadius: 20),
          ],
        ),
        child: Row(
          children: [
            const SizedBox(width: 20),
            SvgPicture.asset(
              'assets/svg/message.svg',
              height: 20,
              width: 20,
              color: Colors.black,
            ),
            const SizedBox(width: 25),
            SvgPicture.asset(
              'assets/svg/shop.svg',
              height: 20,
              width: 20,
              color: Colors.black,
            ),
            const SizedBox(width: 35),
            Expanded(
              child: AppButton.normalButton(title: 'Order Now', height: 40),
            ),
          ],
        ),
      ),
    );
  }
}
