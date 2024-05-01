// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:isms/controllers/theme_management/app_theme.dart';
import 'package:isms/controllers/theme_management/theme_config.dart';

// import '../../controllers/themes/common_theme.dart';

// import '../controllers/themes/common_theme.dart';
// import '../themes/common_theme.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          color: Colors.grey.shade100,
          height: 50,
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Support ", style: TextStyle(color: ThemeConfig.primaryColor)),
                  Icon(
                    Icons.open_in_new_rounded,
                    color: Theme.of(context).colorScheme.primary,
                    size: 12,
                  )
                ],
              ),
              const SizedBox(
                width: 50,
              ),
              Row(
                children: [
                  Text("Terms and Conditions ", style: TextStyle(color: ThemeConfig.primaryColor)),
                  Icon(
                    Icons.open_in_new_rounded,
                    color: Theme.of(context).colorScheme.primary,
                    size: 12,
                  )
                ],
              ),
              const SizedBox(
                width: 50,
              ),
              Row(
                children: [
                  Text("Privacy Policy ", style: TextStyle(color: ThemeConfig.primaryColor)),
                  Icon(
                    Icons.open_in_new_rounded,
                    color: Theme.of(context).colorScheme.primary,
                    size: 12,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
