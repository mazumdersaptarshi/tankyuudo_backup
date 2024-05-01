// ignore_for_file: file_names, non_constant_identifier_names, unused_element

import 'package:flutter/material.dart';
import 'package:isms/controllers/theme_management/app_theme.dart';
import 'package:isms/controllers/theme_management/theme_config.dart';

// import 'package:isms/screens/home_screen.dart';
// import 'package:isms/screens/learningModuleScreens/courseScreens/myLearningScreen.dart';
// import 'package:isms/sharedWidgets/nav_index_tracker.dart';

// import 'package:isms/themes/common_theme.dart';

// import '../../controllers/themes/common_theme.dart';
// import '../../controllers/userManagement/logged_in_state.dart';
// // import '../controllers/themes/common_theme.dart';
// // import '../controllers/userManagement/logged_in_state.dart';
// import '../screens/adminScreens/AdminConsole/admin_console_page.dart';
// import '../screens/home_screen.dart';
// import '../screens/learningModuleScreens/courseScreens/coursesListScreen.dart';
// import '../screens/learningModuleScreens/courseScreens/myLearningScreen.dart';
// import '../screens/userInfo/user_profile_screen.dart';
// import '../views/screens/adminScreens/AdminConsole/admin_console_page.dart';
// import '../views/screens/home_screen.dart';
// import '../views/screens/learningModuleScreens/courseScreens/coursesListScreen.dart';
// import '../views/screens/learningModuleScreens/courseScreens/myLearningScreen.dart';
// import '../views/screens/userInfo/user_profile_screen.dart';
import '../../../controllers/user_management/logged_in_state.dart';
import '../../screens/home_screen.dart';

// import '../../screens/userInfo/user_profile_screen.dart';
import '../../screens/user_screens/user_profile_screen.dart';
import 'nav_index_tracker.dart';

// import '../screens/adminScreens/AdminConsole/admin_console_page.dart';
// import '../screens/learningModuleScreens/courseScreens/coursesListScreen.dart';
// import '../screens/userInfo/user_profile_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, this.loggedInState});

  // final int selectedIndex;
  final LoggedInState? loggedInState;

  @override
  Widget build(BuildContext context) {
    void navigateToUserProfilePage() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const UserProfilePage()),
      );
    }

    void navigateToHomePage() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
    }

    void navigateToCoursesPage() {}

    void NavigateToMyLearningPage() {}

    void navigateToAdminConsolePage() {
      // Navigator.push(context,
      //     MaterialPageRoute(builder: (context) => const AdminConsolePage()));
    }

    void decideNavigation({required int index}) {
      if (index == NavIndexTracker.currentIndex) {
        return;
      }
      if (index == 0) {
        NavIndexTracker.setNavDestination(navDestination: NavDestinations.HomePage);
        navigateToHomePage();
      }

      if (index == 1) {
        NavIndexTracker.setNavDestination(navDestination: NavDestinations.UserProfile);
        navigateToUserProfilePage();
      } else if (index == 2) {
        NavIndexTracker.setNavDestination(navDestination: NavDestinations.MyLearning);
        NavigateToMyLearningPage();
      } else if (index == 3) {
        NavIndexTracker.setNavDestination(navDestination: NavDestinations.AllCourses);
        navigateToCoursesPage();
      }
    }

    return Container(
      decoration: const BoxDecoration(
        //Here goes the same radius, u can put into a var or function
        // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
        color: Colors.transparent,
        // boxShadow: [
        //   BoxShadow(
        //     color: Color(0x14000000),
        //     spreadRadius: 0,
        //     blurRadius: 10,
        //   ),
        // ],
      ),
      child: ClipRRect(
        // borderRadius: const BorderRadius.only(
        //   topLeft: Radius.circular(20),
        //   topRight: Radius.circular(20),
        // ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), // Fallback icon if no image is available
              label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb), // Fallback icon if no image is available
              label: 'My learning',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore), // Fallback icon if no image is available
              label: 'Explore',
            ),
          ],

          // currentIndex: selectedIndex,
          selectedItemColor: Colors.white,

          backgroundColor: ThemeConfig.primaryColor,
          unselectedItemColor: const Color.fromARGB(255, 234, 234, 234),
          type: BottomNavigationBarType.fixed,
          elevation: 5,
          onTap: (int index) {
            decideNavigation(index: index);
          },
          selectedLabelStyle: const TextStyle(
            fontSize: 12, // Adjust the font size here for selected label
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 12, // Adjust the font size here for unselected label
          ),

// This will be set when a new tab is tapped
        ),
      ),
    );
  }
}
