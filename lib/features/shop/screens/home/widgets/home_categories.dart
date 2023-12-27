import 'package:flutter/material.dart';
import 'package:trend_store/common/widgets/image_text_widgets/vertical_image_text.dart';

class AppHomeCategories extends StatelessWidget {
  const AppHomeCategories({
    super.key,
    required this.categories,
    required this.title,
    this.onTap,
  });

  final List<String> categories;
  final List<String> title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (_, index) {
          return AppVerticalImageText(
            image: categories[index],
            title: title[index],
            onTap: onTap,
          );
        },
      ),
    );
  }
}
