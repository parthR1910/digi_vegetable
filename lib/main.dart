import 'package:digi_vegetable/frame_work/repository/services/shared_pref_service/share_pref_service.dart';
import 'package:digi_vegetable/ui/app_routes/app_routes.dart';
import 'package:digi_vegetable/ui/app_routes/route_manager.dart';
import 'package:digi_vegetable/ui/my_order/my_order.dart';
import 'package:digi_vegetable/ui/utils/theme/app_colors.dart';
import 'package:digi_vegetable/ui/utils/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.dark));
   await SharePrefService.prefService.init();


  runApp( ProviderScope(child: EasyLocalization(
        supportedLocales:const [
          Locale('en'),
        ],
      path: 'assets/lang',
      useOnlyLangCode: true,
      startLocale: const Locale('en'),
      child: const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.white
        ),
        supportedLocales: EasyLocalization.of(context)!.supportedLocales,
        locale: EasyLocalization.of(context)!.locale,
        localizationsDelegates: context.localizationDelegates,
        onGenerateRoute: RoutesManager.onGenerateRoutes,
        initialRoute: AppRoute.splash,
        // home: const MyOrders(),
      ),
    );
  }
}