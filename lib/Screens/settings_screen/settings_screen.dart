import 'package:flutter/material.dart';
import 'package:practical_assignment/Screens/auth_screen/signin_screen.dart';
import 'package:practical_assignment/Screens/settings_screen/widgets/settings_card.dart';
import 'package:practical_assignment/helper/helper.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SettingCard(
              title: 'pop alert',
              onTap: () {
                areYouSure(context, title: 'Alert');
              }),
          SettingCard(
            title: 'Sign out',
            onTap: () {
              areYouSure(
                context,
                title: 'Sign out',
                function: () => Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SignInScreen(),
                  ),
                  (route) => false,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
