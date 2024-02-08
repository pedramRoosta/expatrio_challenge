import 'package:ex_app/common/widgets/ex_cta_button.dart';
import 'package:flutter/material.dart';

abstract class ModalHelper {
  static Future<T?> show<T>({
    required BuildContext context,
    String? title,
    Widget? child,
    void Function()? onAccept,
    String? acceptButtonText,
    void Function()? onDismiss,
    String? dismissButtonText,
    EdgeInsets childPadding = const EdgeInsets.fromLTRB(20, 24, 20, 32),
    BoxDecoration? modalDecoration,
  }) {
    return showModalBottomSheet<T?>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.transparent,
      builder: (context) => Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
        child: Container(
          decoration: modalDecoration ??
              BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 2,
                    blurRadius: 6,
                  )
                ],
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
          child: Padding(
            padding: childPadding,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? '',
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  child: SingleChildScrollView(
                    child: child,
                  ),
                ),
                Row(
                  children: [
                    ExCtaButton(
                      onPressed: onDismiss,
                      title: 'dismiss',
                    ),
                    Flexible(
                      child: ExCtaButton(
                        onPressed: onAccept,
                        title: acceptButtonText ?? '',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
