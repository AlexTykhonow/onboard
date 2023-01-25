import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/consts/app_padding.dart';
import '../blocs/general_information_bloc.dart';
import '../extensions/general_information_extensions.dart';
import '../models/general_information.dart';
import 'card_headline.dart';
import 'form_headline.dart';
import 'form_spacer.dart';
import 'input_form_field.dart';
import 'send_button.dart';

class FormBody extends StatelessWidget {
  final List<GeneralInformation> form;

  const FormBody({
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
              const FormHeadline(),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(AppPadding.normal),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const CardHeadline(),
                      ListView.separated(
                        separatorBuilder: (context, index) =>
                            const FormSpacer(),
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: form.length,
                        itemBuilder: (context, index) {
                          final field = form[index];

                          return InputFormField(
                            labelText:
                                field.label(context.locale.languageCode),
                            hintText: field.placeholder,
                            suffixIcon: field.informationType.suffixIcon,
                            textInputAction: form.last == field
                                ? TextInputAction.done
                                : TextInputAction.next,
                            keyboardType: field.informationType.keyboardType,
                            onTap: () => field.informationType.showDatePicker
                                ? showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime.now(),
                                  )
                                : null,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SendButton(
                onPressed: () {
                  context.read<GeneralInformationBloc>().add(
                        const GeneralInformationEvent.save(),
                      );
                },
              ),
            ],
          ),
        ),
      );
}
