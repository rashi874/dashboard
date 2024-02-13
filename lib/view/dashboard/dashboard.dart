import 'package:dashboard/helpers/app_colors.dart';
import 'package:dashboard/helpers/constant.dart';
import 'package:dashboard/view/dashboard/widgets/dash_grid.dart';
import 'package:dashboard/view/dashboard/widgets/order_table.dart';
import 'package:dashboard/view/dashboard/widgets/packages_table.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int columnsCount = 2;

    // Define the icon size based on the screen width
    double height = 200;
    double width = 200;
    double widthpackage = 200;

    // Use the ResponsiveUtils class to determine the device's screen size.
    if (ResponsiveUtils.isMobile(context)) {
      columnsCount = 1;
      height = 670;
      width = 390;
      widthpackage = 390;
    } else if (ResponsiveUtils.isDesktop(context)) {
      columnsCount = 4;
      height = 160;
      width = 700;
      widthpackage = 400;
    } else if (ResponsiveUtils.isTablet(context)) {
      columnsCount = 2;
      height = 330;
      width = 390;
      widthpackage = 350;
    }
    return Scaffold(
      appBar: AppBar(
        title: Image.network(
          'https://zaiproperty.zainikthemes.com/storage/files/Setting/logo-1675497104.png',
          height: 25,
        ),
        actions: [
          const CircleAvatar(
            radius: 12,
            backgroundImage: NetworkImage(
                'https://zaiproperty.zainikthemes.com/storage/files/Language/1675506726.png'),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
          PopupMenuButton(
              icon: const Row(
                children: [
                  Text('Admin'),
                  Icon(Icons.keyboard_arrow_down_rounded)
                ],
              ),
              surfaceTintColor: AppColors.kgrey,
              color: AppColors.kgrey,
              elevation: 5,
              onSelected: (value) {
                // your logic
                // setState(() {
                //   selectedItem = value.toString();
                // });
                if (kDebugMode) {
                  print(value);
                }
                Navigator.pushNamed(context, value.toString());
              },
              itemBuilder: (BuildContext bc) {
                return const [
                  PopupMenuItem(
                    value: '/hello',
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.person_2_outlined),
                        ),
                        Text("Profile"),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: '/about',
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.settings_outlined),
                        ),
                        Text("Settings"),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: '/contact',
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.power_settings_new_rounded),
                        ),
                        Text("Logout"),
                      ],
                    ),
                  )
                ];
              }),
        ],
      ),
      drawer: Drawer(
        elevation: 0,
        backgroundColor: AppColors.kgrey,
        child: ListView(
          physics: const ScrollPhysics(),
          padding: const EdgeInsets.all(8),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: AppColors.kgrey),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.network(
                  'https://zaiproperty.zainikthemes.com/storage/files/Setting/logo-1675497104.png',
                  height: 25,
                ),
              ),
            ),
            ListTile(
              tileColor: AppColors.kgrey,
              leading: const Icon(Icons.dashboard_customize_outlined),
              title: const Text('Dashboard'),
              onTap: () {
                // Update the state of the app.
              },
            ),
            ListTile(
              leading: const Icon(Icons.access_alarm),
              title: const Text('Packages'),
              onTap: () {
                // Update the state of the app.
              },
            ),
            ListTile(
              leading: const Icon(Icons.card_travel),
              title: const Text('All Orders'),
              onTap: () {
                // Update the state of the app.
              },
            ),
            ListTile(
              leading: const Icon(Icons.access_alarm),
              title: const Text('OwnerPackages'),
              onTap: () {
                // Update the state of the app.
              },
            ),
            ListTile(
              leading: const Icon(Icons.lock_clock),
              title: const Text('manage Policy'),
              onTap: () {
                // Update the state of the app.
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Owner'),
              onTap: () {
                // Update the state of the app.
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Update the state of the app.
              },
            ),
            ListTile(
              leading: const Icon(Icons.power_off),
              title: const Text('Profile'),
              onTap: () {
                // Update the state of the app.
              },
            ),
            ListTile(
              leading: const Icon(Icons.update),
              title: const Text('Version Update'),
              onTap: () {
                // Update the state of the app.
              },
            ),
            ListTile(
              leading: const Icon(Icons.access_alarm),
              title: const Text('Packages'),
              onTap: () {
                // Update the state of the app.
              },
            ),
            Appsizes.kh20,
            const Center(
                child: Text('Current Version : 3.4',
                    style: TextStyle(color: Colors.blue))),
          ],
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        children: [
          Container(
            margin: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppColors.kwhite,
              borderRadius: BorderRadius.circular(11),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Dashboard',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Welcome back, Admin 👋',
                    style: TextStyle(color: AppColors.ktext),
                  ),
                ),
                Appsizes.kh20,
                SizedBox(
                  height: height,
                  child: DashGrid(columnsCount: columnsCount),
                ),

                Wrap(
                  runAlignment: WrapAlignment.spaceBetween,
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    OrdersTable(width: width),
                    PackagesTable(width: widthpackage),
                  ],
                ),

                ////////////////////////////////
                Appsizes.kh20,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
