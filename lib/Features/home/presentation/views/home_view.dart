import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/feature_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            FeatureListView(),
            SizedBox(height: 50),
            Text(
              'Best Seller',
              style: Styles.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
