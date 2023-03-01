import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturesListViewItem extends StatelessWidget {
  const FeaturesListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.27,
      child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage),
                )),
          )),
    );
  }
}
