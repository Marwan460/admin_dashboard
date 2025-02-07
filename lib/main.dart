import 'package:admin_dashboard/core/widgets/dash_board_view.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const AdminDashBoard());
}

class AdminDashBoard extends StatelessWidget {
  const AdminDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:DashBoardView(),

    );
  }
}