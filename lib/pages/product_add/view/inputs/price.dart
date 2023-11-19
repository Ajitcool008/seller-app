import 'package:flutter/material.dart';

import 'regular_price.dart';
import 'sale_price.dart';

class Price extends StatelessWidget {
  static const List<String> visible = ['simple', 'external'];

  const Price({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: ProductRegularPrice()),
        SizedBox(width: 12),
        Expanded(child: ProductSalePrice()),
      ],
    );
  }
}
