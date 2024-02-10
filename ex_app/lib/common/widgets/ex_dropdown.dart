import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ExDropDown extends StatelessWidget {
  ExDropDown({
    required this.name,
    this.value,
    this.onTap,
    this.title,
    super.key,
  });
  final String? value;
  final String? title;
  final String name;
  final void Function()? onTap;

  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    controller.text = value ?? '';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title ?? '',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        FormBuilderTextField(
          name: name,
          onTap: onTap,
          controller: controller,
          showCursor: false,
          enableInteractiveSelection: false,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your data';
            }
            return null;
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
            ),
            suffixIcon: Icon(
              Icons.arrow_drop_down_outlined,
            ),
          ),
        ),
      ],
    );
  }
}
