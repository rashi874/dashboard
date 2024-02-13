import 'package:dashboard/helpers/app_colors.dart';
import 'package:dashboard/helpers/constant.dart';
import 'package:flutter/material.dart';

class OrdersTable extends StatelessWidget {
  const OrdersTable({
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
          Text(
            'Orders',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Appsizes.kh20,
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
                      'Package',
                      style: Theme.of(context).textTheme.titleSmall,
                    )),
                  )),
                  TableCell(
                      child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Center(
                        child: Text(
                      'Total',
                      style: Theme.of(context).textTheme.titleSmall,
                    )),
                  )),
                  TableCell(
                      child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Center(
                        child: Text(
                      'Gateway',
                      style: Theme.of(context).textTheme.titleSmall,
                    )),
                  )),
                  TableCell(
                      child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Center(
                        child: Text(
                      'Status',
                      style: Theme.of(context).textTheme.titleSmall,
                    )),
                  )),
                ],
              ),
              const TableRow(
                children: [
                  TableCell(
                      child: Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Center(child: Text('Standard')),
                  )),
                  TableCell(
                      child: Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Center(child: Text('\$ 14.99')),
                  )),
                  TableCell(
                      child: Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Center(child: Text('Bank')),
                  )),
                  TableCell(
                      child: Padding(
                    padding: EdgeInsets.all(13.0),
                    child: Center(child: Text('Paid')),
                  )),
                ],
              ),
            ],
          ),
          Appsizes.kh10,
          Center(
            child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 20,
                  ),
                  label: const Text('View All'),
                )),
          ),
        ],
      ),
    );
  }
}
