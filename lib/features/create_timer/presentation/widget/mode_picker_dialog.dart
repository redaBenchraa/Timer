import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../app_localization.dart';
import '../../../../colors.dart';
import 'tile.dart';

class ModePickerDialog extends StatefulWidget {
  final Tile tile;

  const ModePickerDialog({Key key, this.tile}) : super(key: key);
  @override
  _ModePickerDialogState createState() => _ModePickerDialogState();
}

class _ModePickerDialogState extends State<ModePickerDialog> {
  int number = 10;
  TextEditingController myController;

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @mustCallSuper
  @override
  @protected
  void initState() {
    setState(() {
      number = widget.tile.initial;
    });
    myController = TextEditingController(text: widget.tile.value);

    super.initState();
  }

  void increment() {
    setState(() {
      if (number < widget.tile.step * 50) {
        number += widget.tile.step;
      }
    });
  }

  void decrement() {
    setState(() {
      if (number > widget.tile.step) {
        number -= widget.tile.step;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final translate = AppLocalizations.of(context).translate;
    return AlertDialog(
      scrollable: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 0.0,
      backgroundColor: Colors.white,
      title: Text(
        widget.tile.title,
        style: const TextStyle(color: AppTheme.black),
      ),
      content: Container(
        padding: const EdgeInsets.only(top: 24),
        height: 150,
        width: 300,
        child: Column(
          children: <Widget>[
            Container(
              child: widget.tile.isNumber
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: number == widget.tile.step
                                ? theme.disabledColor
                                : theme.primaryColor,
                            size: 32,
                          ),
                          onPressed: () => decrement(),
                        ),
                        Text(
                          number.toString(),
                          style: const TextStyle(
                              fontSize: 42,
                              fontFamily: 'Arial',
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: number == widget.tile.step * 50
                                ? theme.disabledColor
                                : theme.primaryColor,
                            size: 32,
                          ),
                          onPressed: () => increment(),
                        ),
                      ],
                    )
                  : TextField(
                      controller: myController,
                      style: const TextStyle(color: AppTheme.black),
                      decoration: InputDecoration(
                          hintText: widget.tile.isNumber
                              ? widget.tile.title
                              : widget.tile.hint),
                    ),
            ),
            Expanded(child: Container()),
            RaisedButton(
              textColor: theme.backgroundColor,
              color: theme.primaryColor,
              elevation: 0,
              highlightElevation: 0,
              focusElevation: 0,
              disabledElevation: 0,
              hoverElevation: 0,
              onPressed: () => Navigator.of(context).pop(
                widget.tile.isNumber ? '$number' : myController.text,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  translate("set"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
