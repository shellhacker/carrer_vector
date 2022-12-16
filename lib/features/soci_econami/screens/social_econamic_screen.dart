import 'package:carrer_vector/theme/app_widgets/account_widget.dart';
import 'package:carrer_vector/theme/app_widgets/app_input_feild.dart';
import 'package:carrer_vector/theme/colors/app_colors.dart';
import 'package:carrer_vector/theme/white_space/space_helper.dart';
import 'package:flutter/material.dart';

import '../../../../theme/app_widgets/backgroungwidget.dart';
import '../../../theme/app_widgets/app_text.dart';

class SocialEconamyScreen extends StatelessWidget {
  const SocialEconamyScreen({super.key});

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
            'Profile',
            style: TextStyle(color: kcDark),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  vSpaceMin,
                  const AccountContainer(),
                  vSpaceXl,
                  Container(
                    decoration: const BoxDecoration(
                      color: kcLight,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const BodyText('SOCIO-ECONOMIC PROFILE'),
                              const Spacer(),
                              TextButton(
                                child: const Text('edit'),
                                onPressed: () {},
                              )
                            ],
                          ),
                          vSpaceMin,
                          InputField(
                            labelText: 'fathers name',
                          ),
                          vSpaceMin,
                          InputField(
                            labelText: 'category',
                          ),
                          vSpaceMin,
                          InputField(
                            labelText: 'occupation',
                          ),
                          vSpaceMin,
                          InputField(
                            labelText: 'econamic status',
                          ),
                          vSpaceMin,
                          InputField(
                            labelText: 'contact details',
                          ),
                          vSpaceMin,
                        ],
                      ),
                    ),
                  )
                ],
              )),
        )),
      ),
    );
  }
}
