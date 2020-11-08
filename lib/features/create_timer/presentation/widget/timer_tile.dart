import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../app_localization.dart';
import '../../../../colors.dart';

class TimerTile extends StatelessWidget {
  final String title;
  final Function callback;
  final String value;
  const TimerTile({Key key, this.title, this.callback, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final translate = AppLocalizations.of(context).translate;
    return Column(children: [
      ListTile(
        title: Text(
          translate(title),
          key: Key('${title}_label'),
          style: const TextStyle(color: AppTheme.black),
        ),
        trailing: Text(
          value,
          key: Key('${title}_value'),
          style: const TextStyle(color: AppTheme.black),
        ),
        onTap: () => callback(title, value.split(' ')[0]),
      ),
      const Divider(),
    ]);
  }
}
