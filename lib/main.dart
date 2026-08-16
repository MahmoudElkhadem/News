import 'package:flutter/material.dart';
import 'package:news/view_model/provider/app_Language_provider.dart';
import 'package:provider/provider.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(const News());
}

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<AppLanguageProvider>(context);
    return MaterialApp(
      title: 'News App',
        locale: Locale(languageProvider.appLanguage),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(),
      home: Scaffold(
          body: Container()
      )
    );
  }
}

