import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widget/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widget/featuer_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturesBooklyListView(),
              SizedBox(
                height: 45,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text('Newset Books', style: Style.textStyle18),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
