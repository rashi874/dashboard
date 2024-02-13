import 'package:dashboard/helpers/app_colors.dart';
import 'package:dashboard/helpers/constant.dart';
import 'package:flutter/material.dart';

class DashGrid extends StatelessWidget {
  const DashGrid({
    super.key,
    required this.columnsCount,
  });

  final int columnsCount;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        // Set the number of columns based on the device's screen size.
        crossAxisCount: columnsCount,
        childAspectRatio: 5 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: myObjects.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              color: AppColors.kgrey,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: AppColors.kbordergrey)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: AppColors.kwhite,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColors.kbordergrey)),
                    child: myObjects[index].icons),
                Text(
                  myObjects[index].title,
                  style: TextStyle(color: AppColors.ktext),
                ),
                Text(
                  myObjects[index].count.toString(),
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ResponsiveUtils {
  // Check if the device is considered as mobile based on screen width.
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 600;

  // Check if the device is considered as tablet based on screen width.
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width > 600 &&
      MediaQuery.of(context).size.width <= 1200;

  // Check if the device is considered as desktop based on screen width.
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1200;
}
