import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:zzekak/gen/asset_paths.dart';
import 'package:zzekak/schemes/color_schemes.dart';
import 'package:zzekak/screen/splash/vm_splash.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashViewModel _vm = SplashViewModel();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final String path = await _vm.initLogic();
      if (mounted) {
        context.go(path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.color.primary,
        body: Center(
          child: SvgPicture.asset(
            AssetPaths.TEXT_LOGO_SVG.path,
            width: 80,
          ),
        ));
  }
}
