import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:profile_screen_flutter/model/profile_model.dart';

abstract class ProfileState extends Equatable {
   @override
  List<Object> get props => [];
}

class ProfileInitialState extends ProfileState {
 
}

class ProfileLoadingState extends ProfileState {
  
}

class ProfileLoadedState extends ProfileState {
  ProfiledataModel profileDatas;
  ProfileLoadedState({this.profileDatas});
  
}

class ProfileErrorState extends ProfileState {
  String message;
  ProfileErrorState({@required this.message});
  @override
  List<Object> get props => [message];
}
