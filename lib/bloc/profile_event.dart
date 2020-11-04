import 'package:equatable/equatable.dart';

abstract class ProfileEvent extends Equatable {}

class FetchProfileEvent extends ProfileEvent {
  @override
  List<Object> get props => null;
}
