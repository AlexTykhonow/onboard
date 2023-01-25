import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../shared/consts/app_padding.dart';
import '../../home/extensions/general_information_extensions.dart';
import '../../home/models/general_information.dart';
import '../../home/widgets/form_spacer.dart';
import 'profile_card_head.dart';
import 'profile_head.dart';

class ProfileBody extends StatelessWidget {
  final List<GeneralInformation> form;

  const ProfileBody({
    required this.form,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.normal,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const ProfileHead(),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(AppPadding.normal),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const ProfileCardHead(),
                      const FormSpacer(),
                      ListView.separated(
                        separatorBuilder: (context, index) =>
                            const FormSpacer(),
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: form.length,
                        itemBuilder: (context, index) {
                          final field = form[index];

                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  field.label(context.locale.languageCode),
                                ),
                              ),
                              const SizedBox(
                                width: AppPadding.small,
                              ),
                              Expanded(
                                child: Text(field.placeholder),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const FormSpacer(),
            ],
          ),
        ),
      );
}
