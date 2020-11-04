import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile_screen_flutter/bloc/profile_bloc.dart';
import 'package:profile_screen_flutter/bloc/profile_state.dart';
import 'package:profile_screen_flutter/profile_page.dart';
import 'package:profile_screen_flutter/repository/profile_repo.dart';

import 'bloc/profile_event.dart';
import 'model/profile_model.dart';

void main() {
  runApp(MaterialApp(
      home: BlocProvider(
    create: (context) => ProfileBloc(ProfileInitialState(), ProfileRepo()),
    child: ProfileUI(),
  )));
}

