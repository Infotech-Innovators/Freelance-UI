import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_ui/widgets/button_container_widget.dart';
import 'package:freelance_ui/widgets/stocks_tile.dart';

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
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
          child: Container(
            color: Colors.white,
            height: 47.h,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r))),
              ),
            ),
          ),
        ),
        for (int i = 0; i < 5; i++) ...[
          const StocksTile(
              stockName: "IND STOCKS", timeString: '9:30 Am To 3:30 Pm'),
          Container(
            height: 1.h,
            width: double.maxFinite,
            color: Colors.grey,
          )
        ]
      ],
    );
  }
}
