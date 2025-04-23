import 'package:bookly/Core/Utils/AppStyles.dart';
import 'package:flutter/widgets.dart';

class CustomerrorWidget extends StatelessWidget {
  const CustomerrorWidget({super.key, required this.errormsg});
  final String errormsg;

  @override
  Widget build(BuildContext context) {
    return Text(errormsg,style: AppStyles.textStyle18);
  }
}