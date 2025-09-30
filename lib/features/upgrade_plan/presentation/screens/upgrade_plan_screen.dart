import '../../../../core/widgets/app_button.dart';
import '../widgets/position_star.dart';
import '../widgets/header_section.dart';
import '../widgets/upgrade_plan_button.dart';
import 'package:flutter/material.dart';

class UpgradePlanScreen extends StatefulWidget {
  const UpgradePlanScreen({super.key});

  @override
  State<UpgradePlanScreen> createState() => _UpgradePlanScreenState();
}

class _UpgradePlanScreenState extends State<UpgradePlanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            PositionStar(top: -170, left: -200),
            PositionStar(top: 60, right: -200),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SafeArea(
                child: Column(
                  spacing: 35,
                  children: [
                    HeaderSection(),
                    UpgradePlanButton(),
                    AppButton(text: "Continue", onTap: () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
