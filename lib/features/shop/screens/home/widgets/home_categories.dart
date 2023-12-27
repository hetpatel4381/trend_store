import 'package:flutter/material.dart';
import 'package:trend_store/common/widgets/image_text_widgets/vertical_image_text.dart';

class AppHomeCategories extends StatelessWidget {
  const AppHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (_, index) {
          return AppVerticalImageText(
            image: "assets/icons/categories/icons8-shoes-50.png",
            title: 'Shoes Categories',
            onTap: () {},
          );
        },
      ),
    );
  }
}
