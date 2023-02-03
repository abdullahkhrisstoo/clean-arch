import 'package:clean_arch_templeate/core/text/h1.dart';
import 'package:flutter/material.dart';

class FilledBTN extends StatelessWidget {
  const FilledBTN({super.key, this.onPressed, required this.txt, this.width});
  final void Function()? onPressed;
  final String txt;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
          width: width ?? double.infinity,
          child: FilledButton(onPressed: onPressed, child: Text(txt))),
    );
  }
}

class FilledBTNIcon extends StatelessWidget {
  const FilledBTNIcon(
      {super.key,
      this.onPressed,
      required this.txt,
      this.width,
      required this.iconData});
  final void Function()? onPressed;
  final String txt;
  final double? width;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FilledButton.icon(
            onPressed: onPressed, icon: Icon(iconData), label: Text(txt)),
      ),
    );
  }
}

class OutlinedBTN extends StatelessWidget {
  const OutlinedBTN({super.key, this.w, required this.txt, this.onPressed});
  final double? w;
  final String txt;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        width: w ?? double.infinity,
        child: OutlinedButton(
          onPressed: onPressed,
          child: Text(txt),
        ),
      ),
    );
  }
}

class OutlinedBTNIcon extends StatelessWidget {
  const OutlinedBTNIcon(
      {super.key,
      this.w,
      required this.txt,
      this.onPressed,
      required this.icon});
  final double? w;
  final String txt;
  final void Function()? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        width: w ?? double.infinity,
        child: OutlinedButton.icon(
          onPressed: onPressed,
          icon: Icon(icon),
          label: Text(txt),
        ),
      ),
    );
  }
}

class TextBTN extends StatelessWidget {
  const TextBTN({
    super.key,
    this.onPressed,
    required this.text,
  });
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: Text(text));
  }
}
