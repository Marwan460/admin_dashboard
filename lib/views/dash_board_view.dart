import 'package:admin_dashboard/views/widgets/dashboard_desktop_layout.dart';
import 'package:admin_dashboard/views/widgets/dashboard_mobile_layout.dart';
import 'package:admin_dashboard/views/widgets/dashboard_tablet_layout.dart';
import 'package:admin_dashboard/views/widgets/drawer/custom_drawer.dart';
import 'package:admin_dashboard/views/widgets/layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < 800
          ? const Drawer(child: CustomDrawer())
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
