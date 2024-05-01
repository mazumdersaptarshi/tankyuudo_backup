// ignore_for_file: file_names

import 'package:flutter/material.dart';
// import 'package:isms/userManagement/logged_in_state.dart';
import 'package:provider/provider.dart';

import '../../../controllers/user_management/logged_in_state.dart';

class UserProfileHeaderWidget extends StatelessWidget {
  const UserProfileHeaderWidget(
      {super.key, this.view = 'user', this.refreshCallback});
  final String view;
  final Function? refreshCallback;

  @override
  Widget build(BuildContext context) {
    final LoggedInState loggedInState = context.watch<LoggedInState>();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (loggedInState.currentUser?.photoURL != null)
            Padding(
              padding: const EdgeInsets.only(
                  top: 25.0), // Increased padding on the top
              // child: (view == 'admin')
              //     ? const Icon(
              //         Icons.supervisor_account_rounded,
              //         size: 100,
              //         color: Colors.white,
              //       )
              //     : const Icon(
              //         Icons.account_circle,
              //         size: 100,
              //         color: Colors.white,
              //       )
              child: (NetworkImage(loggedInState.currentUser!.photoURL!) !=
                      null)
                  ? CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          NetworkImage(loggedInState.currentUser!.photoURL!),
                    )
                  : const Icon(
                      Icons.account_circle,
                      size: 100,
                      color: Colors.white,
                    ),
            ),
          const SizedBox(
            height: 10,
          ),
          Text(
            ' ${loggedInState.currentUserName}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  offset: const Offset(0, 1),
                  blurRadius: 2,
                  color: Colors.black.withOpacity(0.5),
                ),
              ],
            ),
          ),
          Text(
            ' ${loggedInState.currentUserEmail}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Text(
            loggedInState.currentUserRole,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
