import 'package:ex_app/common/constants.dart';
import 'package:ex_app/common/widgets/ex_cta_button.dart';
import 'package:flutter/material.dart';

abstract class ModalHelper {
  static const bgColor = Color.fromARGB(145, 0, 0, 0);
  static Future<T?> show<T>({
    required BuildContext context,
    String? acceptButtonText,
    String? title,
    Widget? child,
    void Function()? onAccept,
    EdgeInsets childPadding = const EdgeInsets.fromLTRB(20, 24, 20, 32),
  }) {
    return showModalBottomSheet<T?>(
      isDismissible: false,
      context: context,
      isScrollControlled: true,
      backgroundColor: bgColor,
      barrierColor: bgColor,
      builder: (context) => Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 2,
              blurRadius: 6,
            )
          ],
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Padding(
          padding: childPadding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (title != null)
                Text(title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ))
              else
                const Icon(
                  Icons.check_circle,
                  color: ColorConstants.primaryColor,
                  size: 65,
                ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: child,
              ),
              if (acceptButtonText != null)
                ExCtaButton(
                  onPressed: onAccept,
                  title: acceptButtonText,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
