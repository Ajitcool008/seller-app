import 'package:flutter/material.dart';

import 'fields/fields.dart';

class ProductFormSimple extends StatelessWidget {
  const ProductFormSimple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FieldName(),
        SizedBox(height: 15),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: FieldRegularPrice()),
            SizedBox(width: 12),
            Expanded(child: FieldSalePrice()),
          ],
        ),
        SizedBox(height: 15),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: FieldSku()),
            SizedBox(width: 12),
            Expanded(child: FieldStockQuantity()),
          ],
        ),
        SizedBox(height: 15),
        FieldStockSwitch(),
        SizedBox(height: 15),
        FieldDescription(),
        SizedBox(height: 15),
        FieldFeatureImage(),
        SizedBox(height: 40),
        FieldGalleryImage(),
        SizedBox(height: 40),
        FieldCategory(),
        SizedBox(height: 40),
        FieldVisibility(),
      ],
    );
  }
}
