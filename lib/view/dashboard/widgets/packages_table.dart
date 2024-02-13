
import 'package:dashboard/helpers/app_colors.dart';
import 'package:dashboard/helpers/constant.dart';
import 'package:flutter/material.dart';

class PackagesTable extends StatelessWidget {
  const PackagesTable({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: AppColors.kgrey,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColors.kbordergrey)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Packages',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 20,
                    ),
                    label: const Text('View All'),
                  )),
            ],
          ),
          Appsizes.kh10,
          Table(
            border: TableBorder.all(
                color: AppColors.kbordergrey), // Add borders to cells
            children: [
              TableRow(
                decoration: const BoxDecoration(),
                children: [
                  TableCell(
                      child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Center(
                        child: Text(
                      'Name',
                      style: Theme.of(context).textTheme.titleSmall,
                    )),
                  )),
                  TableCell(
                      child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Center(
                        child: Text(
                      'Monthly Price',
                      style: Theme.of(context).textTheme.titleSmall,
                    )),
                  )),
                  TableCell(
                      child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Center(
                        child: Text(
                      'Yearly Price',
                      style: Theme.of(context).textTheme.titleSmall,
                    )),
                  )),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                      child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Center(
                        child: Text(
                      'Basic',
                      style: Theme.of(context).textTheme.titleSmall,
                    )),
                  )),
                  const TableCell(
                      child: Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Center(child: Text('\$ 9.99')),
                  )),
                  const TableCell(
                      child: Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Center(child: Text('\$ 99.99')),
                  )),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                      child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Center(
                        child: Text(
                      'Trial',
                      style: Theme.of(context).textTheme.titleSmall,
                    )),
                  )),
                  const TableCell(
                      child: Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Center(child: Text('\$ 9.99')),
                  )),
                  const TableCell(
                      child: Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Center(child: Text('\$ 99.99')),
                  )),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                      child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Center(
                        child: Text(
                      'Standard',
                      style: Theme.of(context).textTheme.titleSmall,
                    )),
                  )),
                  const TableCell(
                      child: Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Center(child: Text('\$ 9.99')),
                  )),
                  const TableCell(
                      child: Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Center(child: Text('\$ 99.99')),
                  )),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                      child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Center(
                        child: Text(
                      'Silver',
                      style: Theme.of(context).textTheme.titleSmall,
                    )),
                  )),
                  const TableCell(
                      child: Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Center(child: Text('\$ 9.99')),
                  )),
                  const TableCell(
                      child: Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Center(child: Text('\$ 99.99')),
                  )),
                ],
              ),
            ],
          ),
          Appsizes.kh10,
        ],
      ),
    );
  }
}
