import 'package:dw_barbershop/src/features/auth/home/adm/widgets/home_employee_tile.dart';
import 'package:dw_barbershop/src/features/auth/home/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeAdmPage extends StatelessWidget {
  const HomeAdmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: HomeHeader(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const HomeEmployeeTile(),
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
