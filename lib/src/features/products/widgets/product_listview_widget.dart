import 'package:ecommerce/src/features/products/widgets/product_card_widget.dart';
import 'package:ecommerce/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductListViewWidget extends StatelessWidget {
  final String? title;

  const ProductListViewWidget({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    Widget renderTitle() {
      if (title == null) return const SizedBox();

      return Padding(
        padding: EdgeInsets.symmetric(horizontal: Constants.defaultSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title!,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14.0,
              ),
            ),
            const Divider(),
          ],
        ),
      );
    }

    Widget renderList() {
      return SizedBox(
        height: 400.0,
        child: ListView.separated(
          itemCount: 6,
          shrinkWrap: false,
          padding: EdgeInsets.symmetric(
            horizontal: Constants.defaultSpacing - 3,
            vertical: 5.0,
          ),
          separatorBuilder: (context, index) => const Gap(10.0),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const SizedBox(
              width: 240.0,
              child: ProductCardWidget(),
            );
          },
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        renderTitle(),
        renderList(),
      ],
    );
  }
}
