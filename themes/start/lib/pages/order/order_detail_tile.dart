import 'package:flutter/material.dart';

enum TextSize { bodyMedium, titleSmall, labelSmall }

class OrderDetailTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final TextSize textSize;
  final bool titleSubColor;

  const OrderDetailTile({
    Key? key,
    required this.title,
    required this.subtitle,
    this.textSize = TextSize.bodyMedium,
    this.titleSubColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextStyle? style;
    switch (textSize) {
      case TextSize.labelSmall:
        style = theme.textTheme.labelSmall;
        break;
      case TextSize.titleSmall:
        style = theme.textTheme.titleSmall;
        break;
      default:
        style = theme.textTheme.bodyMedium;
    }

    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: style?.copyWith(
                color: titleSubColor ? theme.textTheme.bodySmall?.color : theme.textTheme.titleMedium?.color),
          ),
        ),
        Text(subtitle, style: style?.copyWith(color: theme.textTheme.titleMedium?.color)),
      ],
    );
  }
}
