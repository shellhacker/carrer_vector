import 'package:carrer_vector/theme/colors/app_colors.dart';
import 'package:carrer_vector/theme/white_space/space_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../theme/app_widgets/account_widget.dart';
import '../../../theme/app_widgets/backgroungwidget.dart';
import '../../exam_directories/screens/exam_directories_screen.dart';
import '../../institute_details/screens/intitute_details.dart.dart';
import '../../mcq/screens/mcq_screen.dart';
import '../../personal_details/screens/personal_details.dart.dart';
import '../../soci_econami/screens/social_econamic_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackgounrWidget(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back,
            color: kcDark,
          ),
          centerTitle: true,
          title: const Text(
            'Account',
            style: TextStyle(color: kcDark),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ExamDirectoriesScreen()),
                  );
                },
                icon: const Icon(
                  Icons.menu,
                  color: kcDark,
                ))
          ],
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                vSpaceMin,
                const AccountContainer(),
                vSpaceMedium,
                vSpaceXl,
                Container(
                  decoration: const BoxDecoration(
                    color: kcLight,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: [
                      vSpaceLarge,
                      ListTile(
                        leading: const CircleAvatar(
                          radius: 40,
                        ),
                        title: Column(
                          children: [
                            Row(
                              children: [
                                const Text('Personal Details'),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const PersonalDetailsScreen()),
                                      );
                                    },
                                    icon: const Icon(Icons.arrow_forward_ios)),
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                              color: kcDark,
                            )
                          ],
                        ),
                      ),
                      vSpaceMin,
                      ListTile(
                        leading: const CircleAvatar(
                          radius: 40,
                        ),
                        title: Column(
                          children: [
                            Row(
                              children: [
                                const Text('Institute Details'),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const InstituteDetailsScreen()),
                                      );
                                    },
                                    icon: const Icon(Icons.arrow_forward_ios)),
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                              color: kcDark,
                            )
                          ],
                        ),
                      ),
                      ListTile(
                        leading: const CircleAvatar(
                          radius: 40,
                        ),
                        title: Column(
                          children: [
                            Row(
                              children: [
                                const Text('Socio-economic Profile'),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SocialEconamyScreen()),
                                      );
                                    },
                                    icon: const Icon(Icons.arrow_forward_ios)),
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                              color: kcDark,
                            )
                          ],
                        ),
                      ),
                      ListTile(
                        leading: const CircleAvatar(
                          radius: 40,
                        ),
                        title: Column(
                          children: [
                            Row(
                              children: [
                                const Text("MCQ's"),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MCQScreen()),
                                      );
                                    },
                                    icon: const Icon(Icons.arrow_forward_ios)),
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                              color: kcDark,
                            )
                          ],
                        ),
                      ),
                      vSpaceLarge
                    ],
                  ),
                ),
                vSpaceMedium,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.squareFacebook,
                          size: 30,
                        ),
                        onPressed: () {}),
                    IconButton(
                        // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                        icon: const FaIcon(
                          FontAwesomeIcons.linkedin,
                          size: 30,
                        ),
                        onPressed: () {}),
                    IconButton(
                        // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                        icon: const FaIcon(
                          FontAwesomeIcons.instagram,
                          size: 30,
                        ),
                        onPressed: () {}),
                  ],
                ),
                TextButton(onPressed: () {}, child: const Text('SIGN OUT'))
              ],
            ),
          ),
        )),
      ),
    );
  }
}
