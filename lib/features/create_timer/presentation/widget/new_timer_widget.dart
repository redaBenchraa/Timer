import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer/app_localization.dart';
import 'package:timer/colors.dart';
import 'package:timer/features/create_timer/presentation/cubit/new_timer_cubit.dart';
import 'package:timer/features/create_timer/presentation/widget/timer_tile.dart';

import 'mode_picker_dialog.dart';
import 'tile.dart';

class NewTimerWidget extends StatelessWidget {
  final int id;
  const NewTimerWidget({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final translate = AppLocalizations.of(context).translate;
    final cubit = context.watch<NewTimerCubit>();
    if (id != null) {
      cubit.load(id);
      cubit.setId(id);
    }
    List<Tile> getTiles() {
      return <Tile>[
        Tile(
          title: 'name',
          hint: 'enter_name',
          step: 1,
          value: cubit.state.timer.name,
          isNumber: false,
        ),
        Tile(
          title: 'number_of_sets',
          step: 1,
          initial: cubit.state.timer.numberOfSets,
          isNumber: true,
        ),
        Tile(
          title: 'number_of_reps_per_set',
          step: 1,
          initial: cubit.state.timer.numberOfReps,
          isNumber: true,
        ),
        Tile(
          title: 'repitition_duration',
          step: 10,
          initial: cubit.state.timer.duration,
          isNumber: true,
        ),
        Tile(
          title: 'break_between_reps',
          step: 10,
          initial: cubit.state.timer.breakBetweenReps,
          isNumber: true,
        ),
        Tile(
          title: 'break_between_sets',
          step: 10,
          initial: cubit.state.timer.breakBetweenSets,
          isNumber: true,
        ),
      ];
    }

    List<Tile> tiles = getTiles();
    return BlocConsumer<NewTimerCubit, NewTimerState>(
        listener: (context, state) {
      tiles = getTiles();
      if (state.done) {
        Navigator.of(context).pop();
      }
    }, builder: (context, state) {
      Future<void> callback(String title, String value) async {
        await showDialog<String>(
            context: context,
            builder: (BuildContext context) => ModePickerDialog(
                tile: tiles
                    .where((element) => element.title == title)
                    .first)).then((value) {
          if (value != null) {
            switch (title) {
              case 'name':
                cubit.setName(value);
                break;
              case 'number_of_sets':
                cubit.setNbSets(int.parse(value));
                break;
              case 'number_of_reps_per_set':
                cubit.setNbReps(int.parse(value));
                break;
              case 'repitition_duration':
                cubit.setDuration(int.parse(value));
                break;
              case 'break_between_reps':
                cubit.setBreakReps(int.parse(value));
                break;
              case 'break_between_sets':
                cubit.setBreakSets(int.parse(value));
                break;
            }
          }
        });
      }

      final list = <String, String>{
        'name': state.timer.name,
        'number_of_sets': '${state.timer.numberOfSets}',
        'number_of_reps_per_set': '${state.timer.numberOfReps}',
        'repitition_duration': '${state.timer.duration} s',
        'break_between_reps': '${state.timer.breakBetweenReps} s',
        'break_between_sets': '${state.timer.breakBetweenSets} s',
      }.entries;
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(translate('new_timer')),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Column(children: [
              ...list.map(
                (entry) => TimerTile(
                  key: Key('${entry.key}_tile'),
                  title: entry.key,
                  value: entry.value,
                  callback: callback,
                ),
              )
            ]),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          key: const Key('add_timer_button'),
          backgroundColor: state.active ? AppTheme.green : AppTheme.lightGrey,
          elevation: 0,
          onPressed: state.active
              ? () {
                  cubit.addTimer();
                }
              : null,
          child: const Icon(
            Icons.check,
            color: AppTheme.white,
          ),
        ),
      );
    });
  }
}
