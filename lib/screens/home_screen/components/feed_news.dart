import 'package:fashion_shop_ui/app/app_consts.dart';
import 'package:fashion_shop_ui/components/app_buttons.dart';
import 'package:flutter/material.dart';

class FeedNews extends StatefulWidget {
  const FeedNews({Key? key}) : super(key: key);

  @override
  State<FeedNews> createState() => _FeedNewsState();
}

class _FeedNewsState extends State<FeedNews> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          SizedBox(
            height: 180,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              onPageChanged: (i) {
                setState(() => currentIndex = i);
              },
              itemCount: 5,
              itemBuilder: (ctx, i) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: const AssetImage('assets/pictures/clothes_shop.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(.6),
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      height: 35,
                      width: 130,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        color: Colors.white24,
                      ),
                      child: const Text(
                        'Special Promo',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'All menswear',
                                style: TextStyle(color: Colors.white),
                              ),
                              const Text(
                                '50% Discount',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 20),
                              AppButton.normalButton(
                                height: 35,
                                width: 100,
                                title: 'Buy Now',
                                backgroundColor: Colors.white,
                                shadow: false,
                                titleColor: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 30,
            bottom: 10,
            child: SizedBox(
              height: 16,
              child: Row(
                children: List.generate(
                  5,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.only(right: 3),
                    height: index == currentIndex ? 16 : 8,
                    width: 5,
                    decoration: BoxDecoration(
                      color:
                          index == currentIndex ? Colors.white : AppColors.grey,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
