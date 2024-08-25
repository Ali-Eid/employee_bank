import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fs_bank/core/constants/assets_manager.dart';
import 'package:fs_bank/core/constants/values_manager.dart';
import 'package:fs_bank/core/routers/routes_manager.dart';
import 'package:fs_bank/core/themes/color_manager.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 7),
      () {
        context.goNamed(RoutesNames.homeRoute);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(color: ColorManager.black),
          ),
          Center(
            child: FadeInDown(
              duration: const Duration(milliseconds: 3000),
              //  child:Text('Agent')
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    ImageAssets.logo,
                    width: ScreenUtil.defaultSize.width * 0.6,
                    // color: ColorManager.black,
                  ),
                  Padding(
                    padding: EdgeInsets.all(AppSizeW.s8),
                    child: Column(
                      children: [
                        Text('Welcome',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(color: ColorManager.white)),
                        // SizedBox(
                        //   height: AppSizeH.s4,
                        // ),
                        // Text('OnBoarding app',
                        //     style: Theme.of(context)
                        //         .textTheme
                        //         .labelMedium!
                        //         .copyWith(color: ColorManager.white))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
