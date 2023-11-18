import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Widget renderImage() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Image.network(
            'https://m.media-amazon.com/images/I/51wCGWFb1ML._AC_UL320_.jpg',
            height: 160.0,
          ),
        ),
      );
    }

    Widget renderListPrice() {
      return Row(
        children: [
          Text(
            'R\$ 1.199,00',
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(decoration: TextDecoration.lineThrough),
          ),
          const Gap(10.0),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: const Text(
              '-40%',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12.0,
                color: Colors.black,
              ),
            ),
          )
        ],
      );
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            renderImage(),
            Text(
              'tp-link'.toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12.0,
              ),
            ),
            const Text(
              'Deco M4 - Kit Roteador Wi-Fi Mesh Gigabit, 5GHz',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const Gap(14.0),
            renderListPrice(),
            const Gap(4.0),
            const Text(
              'R\$ 719,00',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
