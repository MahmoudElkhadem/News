import 'package:flutter/material.dart';
import 'package:news/utils/app_route.dart';
import 'package:news/utils/app_theme.dart';
import 'package:news/view/home/home_view.dart';
import 'package:news/view_model/provider/app_Language_provider.dart';
import 'package:news/view_model/provider/app_theme_provider.dart';
import 'package:provider/provider.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => AppLanguageProvider()),
          ChangeNotifierProvider(create: (context) => AppThemeProvider(),),
        ],
      child: News(),
    ),
  );
}

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<AppLanguageProvider>(context);
    var themeProvider = Provider.of<AppThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
        locale: Locale(languageProvider.appLanguage),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.appTheme,
      initialRoute: AppRoute.homeView,
      routes: {
        AppRoute.homeView : (context) => HomeView(),
      },
    );
  }
}

