import 'package:carrer_vector/theme/app_widgets/app_text.dart';
import 'package:carrer_vector/theme/colors/app_colors.dart';
import 'package:carrer_vector/theme/white_space/space_helper.dart';
import 'package:flutter/material.dart';

import '../../../../theme/app_widgets/backgroungwidget.dart';

class ExamDirectoriesScreen extends StatelessWidget {
  const ExamDirectoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackgounrWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back,
            color: kcDark,
          ),
          centerTitle: true,
          title: const Text(
            'Exam\nDirectories',
            style: TextStyle(color: kcDark),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: kcDark,
                ))
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                vSpaceLarge,
                Container(
                  decoration: const BoxDecoration(
                    color: kcLight,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    children: [
                      const Image(
                        image:
                            AssetImage('asset/images/undraw_true_friends.png'),
                        width: 140,
                        height: 180,
                      ),
                      vSpaceMin,
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            vSpaceXl,
                            const H3('Exam Titel'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const BodyText('Know more'),
                                hSpaceMedium,
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ExamTitleDetails()),
                                      );
                                    },
                                    icon: const Icon(
                                        Icons.keyboard_arrow_right_outlined))
                              ],
                            ),
                            const Divider(
                              thickness: 4,
                              color: kcDark,
                            )
                          ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class ExamTitleDetails extends StatelessWidget {
  const ExamTitleDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: kcDark,
        ),
        centerTitle: true,
        title: const Text(
          'Exam\nDirectories',
          style: TextStyle(color: kcDark),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: kcDark,
              ))
        ],
      ),
      body: Column(
        children: [
          vSpaceMedium,
          Container(
            decoration: const BoxDecoration(
              color: kcLight,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 140,
                      height: 120,
                      child: Image(
                          image: AssetImage(
                              'asset/images/undraw_true_friends.png')),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          vSpaceXl,
                          H3('Titel'),
                          BodyText('Know mordf,nlklkksg;fe'),
                          vSpaceMin,
                          BodyText('Know mordf,nlklkksg;fe'),
                        ]),
                    vSpaceMin,
                  ],
                ),
                vSpaceMedium,
                Wrap(
                  children: const [
                    BodyText(
                        'awgdhhisjkhjgbkjlkhjbhkjjhkhjghjiuhghghffuyughiuijhb\nfguiopouytreryuiopo[piuytyrfguhijopo[iuiyughijopklk'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
