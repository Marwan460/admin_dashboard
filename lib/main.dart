import 'package:admin_dashboard/views/dash_board_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const AdminDashBoard(),
      enabled: false,
    ),
  );
}

class AdminDashBoard extends StatelessWidget {
  const AdminDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const DashBoardView(),
    );
  }
}
