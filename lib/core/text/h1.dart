import 'package:flutter/material.dart';

class H1 extends Text {
  const H1(super.data, {super.key, this.color, this.textAlignment});
  final Color? color;
  final TextAlign? textAlignment;
  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      style: Theme.of(context).textTheme.displayLarge?.copyWith(color: color),
      textAlign: textAlignment,
    );
  }
}

class H2 extends Text {
  const H2(super.data, {super.key, this.color, this.textAlignment});
  final Color? color;
  final TextAlign? textAlignment;
  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      style: Theme.of(context).textTheme.displayMedium?.copyWith(color: color),
      textAlign: textAlignment,
    );
  }
}

class H3 extends Text {
  const H3(super.data, {super.key, this.color, this.textAlignment});
  final Color? color;
  final TextAlign? textAlignment;
  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      style: Theme.of(context).textTheme.displaySmall?.copyWith(color: color),
      textAlign: textAlignment,
    );
  }
}

class H4 extends Text {
  const H4(super.data, {super.key, this.color, this.textAlignment});
  final Color? color;
  final TextAlign? textAlignment;
  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: color),
      textAlign: textAlignment,
    );
  }
}

class H5 extends Text {
  const H5(super.data, {super.key, this.color, this.textAlignment});
  final Color? color;
  final TextAlign? textAlignment;
  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: color),
      textAlign: textAlignment,
    );
  }
}

class H6 extends Text {
  const H6(super.data, {super.key, this.color, this.textAlignment});
  final Color? color;
  final TextAlign? textAlignment;
  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      style: Theme.of(context).textTheme.titleLarge?.copyWith(color: color),
      textAlign: textAlignment,
    );
  }
}

class Subtitle1 extends Text {
  const Subtitle1(super.data, {super.key, this.color, this.textAlignment});
  final Color? color;
  final TextAlign? textAlignment;
  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      style: Theme.of(context).textTheme.subtitle1?.copyWith(color: color),
      textAlign: textAlignment,
    );
  }
}

class Subtitle2 extends Text {
  const Subtitle2(super.data, {super.key, this.color, this.textAlignment});
  final Color? color;
  final TextAlign? textAlignment;
  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      style: Theme.of(context).textTheme.subtitle2?.copyWith(color: color),
      textAlign: textAlignment,
    );
  }
}

class BodyText1 extends Text {
  const BodyText1(super.data, {super.key, this.color, this.textAlignment});
  final Color? color;
  final TextAlign? textAlignment;
  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      style: Theme.of(context).textTheme.bodyText1?.copyWith(color: color),
      textAlign: textAlignment,
    );
  }
}

class BodyText2 extends Text {
  const BodyText2(super.data, {super.key, this.color, this.textAlignment});
  final Color? color;
  final TextAlign? textAlignment;
  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? '',
      style: Theme.of(context).textTheme.bodyText2?.copyWith(color: color),
      textAlign: textAlignment,
    );
  }
}
