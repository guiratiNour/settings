import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'PrivacyPolicyPage.dart';
import 'TermesServices.dart';
import 'FeedbackPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static ThemeMode themeMode = ThemeMode.light;

  static void setThemeMode(ThemeMode mode) {
    themeMode = mode;
  }

  @override
  _MyAppState createState() => _MyAppState();

  static void setLocale(BuildContext context, Locale locale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    if (state != null) {
      state._setLocale(locale);
    }
  }
}

class _MyAppState extends State<MyApp> {
  void _setLocale(Locale locale) {
    setState(() {
      // Mettre à jour l'état de l'application avec la nouvelle locale ici
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: MyApp.themeMode,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: SettingsPage(),
      supportedLocales: [
        Locale('en', 'US'),
        Locale('fr', 'FR'),
        Locale('ar', 'SA'),
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale!.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),

                _buildLanguageSettingItem('Language', Icons.language),
                SizedBox(height: 20), // Ajout d'un espace entre les éléments
                _buildSettingItem('Terms of Service', Icons.arrow_forward,
                    _navigateToTermsOfServicePage),
                _buildSettingItem('Privacy Policy', Icons.arrow_forward, () {
                  // Naviguer vers PrivacyPolicyPage lorsque Privacy Policy est cliqué
                  _navigateToPrivacyPolicyPage(context);
                }),
                _buildSettingItem('Give us Feedback', Icons.arrow_forward,
                    _navigateToFeedbackPage), // Modification ici
                _buildSettingItem('Log Out', Icons.arrow_forward),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSettingItem(String text, IconData iconData,
      [VoidCallback? onTap, String? additionalText]) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(width: 70), // Espacement entre le texte et l'icône
            Icon(
              iconData,
              color: Colors.blue[900],
            ),
            if (additionalText != null)
              SizedBox(
                  width:
                      10), // Ajouter un espacement si additionalText est non null
            if (additionalText != null)
              Text(
                additionalText,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageSettingItem(String text, IconData iconData) {
    return InkWell(
      onTap: () {
        _showLanguageDialog(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(width: 70), // Espacement entre le texte et l'icône
            Icon(
              iconData,
              color: Colors.blue[900],
            ),
          ],
        ),
      ),
    );
  }

  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Choose Language'),
          backgroundColor: Colors.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('English'),
                onTap: () {
                  _changeLanguage(Locale('en', 'US'));
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Français'),
                onTap: () {
                  _changeLanguage(Locale('fr', 'FR'));
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('العربية'),
                onTap: () {
                  _changeLanguage(Locale('ar', 'SA'));
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _changeLanguage(Locale locale) {
    MyApp.setLocale(context, locale);
  }

  void _navigateToTermsOfServicePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TermsOfServicePage()),
    );
  }

  void _navigateToPrivacyPolicyPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PrivacyPolicyPage()),
    );
  }

  void _navigateToFeedbackPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FeedbackPage()),
    );
  }
}
