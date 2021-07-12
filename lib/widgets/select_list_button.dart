import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectListButton extends StatelessWidget {
  const SelectListButton({
    Key? key,
    required this.item,
    required this.selectedId,
    required this.withIcon,
  }) : super(key: key);

  final item, selectedId, withIcon;

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: selectedId == item.id
            ? appTheme.primaryColor
            : appTheme.colorScheme.surface,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
      child: Row(
        children: [
          withIcon
              ? SvgPicture.asset(
                  item.path,
                  height: 36,
                  width: 36,
                )
              : SizedBox(height: 0, width: 0),
          SizedBox(width: withIcon ? 35 : 0),
          Expanded(
            child: Text(
              item.name,
              style: TextStyle(
                fontSize: 19,
                color: selectedId == item.id
                    ? appTheme.colorScheme.primaryVariant
                    : appTheme.colorScheme.primary,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 1,
                color: Colors.grey.withOpacity(0.4),
              ),
              color:
                  selectedId == item.id ? appTheme.colorScheme.secondary : null,
            ),
            child: Icon(
              Icons.done,
              color: selectedId == item.id
                  ? appTheme.colorScheme.onSecondary
                  : Colors.grey.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}
