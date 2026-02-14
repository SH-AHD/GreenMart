import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/svg_pic.dart';

class AccountOptions extends StatelessWidget {
  const AccountOptions({
    super.key,
    required this.accMap,
  });

  final Map<String, String> accMap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: accMap.entries.map((entry) {
        return Column(
          children: [
            Divider(),
            ListTile(
              leading: SvgPic(img: entry.value),
              title: Text(
                entry.key,
                style: TextStyles.font18BlackW600,
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
