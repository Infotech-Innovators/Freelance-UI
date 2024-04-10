import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/widgets/button_container_widget.dart';

class StocksPage extends StatefulWidget {
  const StocksPage({super.key});

  @override
  State<StocksPage> createState() => _StocksPageState();
}

class _StocksPageState extends State<StocksPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonContainerWidget(
                text: "PORTFOLIO",
                isActive: true,
              ),
              ButtonContainerWidget(
                text: "PAPERTRADING",
                isActive: false,
              )
            ],
          ),
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h))
      ],
    );
  }
}
