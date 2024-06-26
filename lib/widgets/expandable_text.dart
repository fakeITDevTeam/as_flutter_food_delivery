import 'package:flutter/material.dart';
import 'package:as_flutter_food_delivery/utils/colors.dart';
import 'package:as_flutter_food_delivery/utils/dimensions.dart';
import 'package:as_flutter_food_delivery/widgets/small_text.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  // double textHeight  = Dimensions.screenHeight / (5.63); // oriyt
  double textHeight  = Dimensions.screenHeight / (Dimensions.screenHeight / 150);

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty? SmallText(color: AppColors.paraColor, size: Dimensions.font16, text: firstHalf) : Column(
        children: [
          SmallText(
            height: 1.8,
            color: AppColors.paraColor,
            size: Dimensions.font16,
            text: hiddenText? ("$firstHalf ...") : (firstHalf + secondHalf),
          ),
          InkWell(
            onTap: () {
              setState(() {
                hiddenText =! hiddenText;
              });
            },
            child: Row(
              children: [
                const SmallText(
                  text: "Show more",
                  color: AppColors.mainColor,
                ),
                Icon(hiddenText? Icons.arrow_drop_down: Icons.arrow_drop_up, color: AppColors.mainColor,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}