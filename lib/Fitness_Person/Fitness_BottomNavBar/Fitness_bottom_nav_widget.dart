import 'package:flutter/material.dart';

class FitnessBottonNavWidget extends StatelessWidget {
  const FitnessBottonNavWidget({
    super.key, this.onTap, this.icon,
  });
  final void Function()? onTap;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 36,
        width: 36,
        child: Icon(icon,color: Color(0xff505050),),
      ),
    );
  }
}