import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:timer/colors.dart';
import 'package:timer/features/home/data/models/entry.dart';

class TimerItem extends StatelessWidget {
  final Entry entry;
  final Function delete;
  final Function edit;
  const TimerItem({Key key, this.entry, this.delete, this.edit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
        margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Slidable(
          actionPane: const SlidableDrawerActionPane(),
          actionExtentRatio: 0.15,
          actions: [
            ClipRRect(
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(5),
              ),
              child: IconSlideAction(
                icon: Icons.edit,
                color: AppTheme.lightGrey,
                foregroundColor: AppTheme.black,
                onTap: () => edit(),
              ),
            ),
          ],
          secondaryActions: [
            ClipRRect(
              borderRadius: const BorderRadius.horizontal(
                right: Radius.circular(5),
              ),
              child: IconSlideAction(
                icon: Icons.delete,
                color: AppTheme.lightGrey,
                foregroundColor: AppTheme.black,
                onTap: () => delete(),
              ),
            ),
          ],
          child: Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppTheme.black,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: entry.color),
                  height: 5.0,
                  width: 100.0,
                ),
                Text(
                  entry.title,
                  style: theme.textTheme.headline6
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                Text(
                  entry.subTitle,
                  style: theme.textTheme.bodyText2,
                ),
              ],
            ),
          ),
        ));
  }
}
