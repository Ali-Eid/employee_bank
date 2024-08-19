import 'dart:async';

import 'package:flutter/material.dart';
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
      const Duration(seconds: 3),
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
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            ImageAssets.splash,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: AppSizeH.s80,
                width: AppSizeW.s80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizeR.s24),
                  image:
                      DecorationImage(image: AssetImage(ImageAssets.bankLogo)),
                ),
              ),
              SizedBox(height: AppSizeH.s32),
              Text(
                "Bis-Bank",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: AppSizeH.s16),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Find the best company stock for your investment",
                      style: Theme.of(context).textTheme.displaySmall,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
