import 'package:flutter/material.dart';
import 'package:flutter_store_manager/themes.dart';

class StatusView extends StatelessWidget {
  final bool isActive;

  const StatusView({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return BadgeUi(
      title: isActive ? 'active' : 'inactive',
      size: 22,
      padHorizontal: 8,
      background: isActive ? theme.primaryColor : theme.textTheme.labelSmall?.color ?? Colors.green,
    );
  }
}
