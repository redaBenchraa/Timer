import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer/features/create_timer/presentation/cubit/new_timer_cubit.dart';
import 'package:timer/features/create_timer/presentation/widget/new_timer_widget.dart';
import 'package:timer/injection/injection.dart';

class NewTimerPage extends StatelessWidget {
  final int id;
  const NewTimerPage({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewTimerCubit>(
      create: (context) => getIt<NewTimerCubit>(),
      child: NewTimerWidget(
        id: id,
      ),
    );
  }
}
