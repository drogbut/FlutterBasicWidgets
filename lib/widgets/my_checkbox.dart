

import 'package:flutter/material.dart';

class MyCheckBox extends StatelessWidget {

  final String title;
  final VoidCallback onTapCheckBoxTitle;
  final Checkbox titleLeading;
  final bool value;

  const MyCheckBox({
    Key key,
    this.title,
    this.value,
    this.titleLeading, this.onTapCheckBoxTitle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Divider(),
        ListTile(
          title: Text(title, textScaleFactor: 1.4,),
          onTap: onTapCheckBoxTitle,
          leading: titleLeading,
        ),
        Divider(),
       /* ...checkboxList.map((item) =>
            ListTile(
              title: Text(item.title),
              onTap: () => onItemClicked(item),
              leading: Checkbox(
                value: item.value,
                onChanged: (value) => onItemClicked(item),
              ),
            ),
        ).toList()*/
      ],
    );
  }


}