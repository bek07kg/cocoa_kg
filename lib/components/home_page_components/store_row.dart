import 'package:flutter/material.dart';

class StoreRow extends StatelessWidget {
  const StoreRow({
    super.key,
    required this.onTap,
    required this.image,
    required this.onTap1,
    required this.image1,
  });

  final void Function()? onTap;
  final Image image;
  final void Function()? onTap1;
  final Image image1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: onTap,
            child: image,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: InkWell(onTap: onTap1, child: image1),
        ),
      ],
    );
  }
}
