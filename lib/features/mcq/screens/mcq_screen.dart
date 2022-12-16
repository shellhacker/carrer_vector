import 'package:carrer_vector/theme/colors/app_colors.dart';
import 'package:carrer_vector/theme/white_space/space_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../theme/app_widgets/backgroungwidget.dart';
import '../provider/mcq_controller.dart';

class MCQScreen extends StatelessWidget {
  MCQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mcqController = Provider.of<McqController>(context);

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
            'Hai User',
            style: TextStyle(color: kcDark),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              vSpaceLarge,
              Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 40, bottom: 20),
                decoration: const BoxDecoration(
                  color: kcLight,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: SizedBox(
                  child: Column(
                    children: [
                      vSpaceXl,
                      McqContainer(
                        title: 'Abilities',
                        onTap: () {
                          mcqController.abilitiesBool =
                              !mcqController.abilitiesBool;
                          mcqController.notifyListeners();
                          print(mcqController.abilitiesBool);
                        },
                        color: mcqController.abilitiesBool == true
                            ? kthemeColor
                            : kcLight,
                      ),
                      vSpaceMedium,
                      Visibility(
                          visible: mcqController.abilitiesBool,
                          child: Column(
                            children: [
                              McqContainer(
                                title: 'Cognative Abilities',
                                onTap: () {},
                                color: kcLightGreyColor,
                              ),
                              vSpaceMedium,
                              McqContainer(
                                title: 'Physical Abilities',
                                onTap: () {},
                                color: kcLightGreyColor,
                              ),
                            ],
                          )),
                      kThikness,
                      McqContainer(title: 'Interest', onTap: () {}),
                      vSpaceMedium,
                      McqContainer(
                        title: 'Knowledge',
                        onTap: () {},
                      ),
                      vSpaceMedium,
                      McqContainer(title: 'Skill', onTap: () {}),
                      vSpaceMedium,
                      McqContainer(
                        title: 'Cross-functional Skill',
                        onTap: () {},
                      ),
                      vSpaceMedium,
                      McqContainer(
                        title: ' Work Activites',
                        onTap: () {},
                      ),
                      vSpaceMedium,
                      McqContainer(title: 'Work context', onTap: () {}),
                      vSpaceMedium,
                      McqContainer(title: 'Work Style', onTap: () {}),
                      vSpaceMedium,
                      // DropdownButtonFormField(items: items, onChanged: onChanged)
                    ],
                  ),
                ),
              )
            ]),
          ),
        )),
      ),
    );
  }

  List d = [
    "dsvfg",
    "dvdfg",
    "dfdfgg",
    "dfdfvg",
  ];
  bool b = false;
  List<Widget> demo(index) {
    return List.generate(2, (index) {
      return Visibility(
        // visible: false,
        child: Column(
          children: [
            vSpaceMedium,
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: kthemeColor,
                borderRadius: BorderRadius.all(Radius.circular(13)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('vvvvvvvvvvv'),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_rounded))
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}

class McqContainer extends StatelessWidget {
  McqContainer({Key? key, required this.title, required this.onTap, this.color})
      : super(key: key);
  String title;
  VoidCallback onTap;
  Color? color = kcLight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(13)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            IconButton(
                onPressed: onTap,
                icon: const Icon(Icons.arrow_forward_ios_rounded))
          ],
        ),
      ),
    );
  }
}
