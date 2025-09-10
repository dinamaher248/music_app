import 'package:device_preview/device_preview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/core/Api/dio_consumer.dart';
import 'package:music_app/core/cache/cache_helper.dart';
import 'package:music_app/core/routing/app_router.dart';
import 'package:sizer/sizer.dart';

import 'core/services/bloc_provider_list.dart';
import 'core/services/theme_cubit.dart';
import 'core/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  final dioConsumer = DioConsumer(dio: Dio());

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MultiBlocProvider(
        providers: buildBlocProviders(dioConsumer),
        child: const MarketEcommers(),
      ),
    ),
  );
}
 

class MarketEcommers extends StatelessWidget {
  const MarketEcommers({super.key});

    
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return BlocBuilder<ThemeCubit, ThemeMode>(
          builder: (context, themeMode) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: AppRouter.router, 
              theme: lightTheme, 
              darkTheme: darkTheme,
              themeMode: themeMode, 
            );
          },
        );
      },
    );
  }
}
