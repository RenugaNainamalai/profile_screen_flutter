import 'package:bloc/bloc.dart';
import 'package:profile_screen_flutter/bloc/profile_event.dart';
import 'package:profile_screen_flutter/bloc/profile_state.dart';
import 'package:profile_screen_flutter/repository/profile_repo.dart';


class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileRepo repo;
ProfileBloc(ProfileState initialState, this.repo) : super(initialState);

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if (event is FetchProfileEvent) {
      yield ProfileLoadingState();
      try {
        var profile = await repo.fetchProfile();
        if(profile != null) {
        yield ProfileLoadedState(profileDatas: profile);
        }
        else {
         yield ProfileLoadingState();
        }
      } catch (e) {
        yield ProfileErrorState(message: e.toString());
      }
    }
  }

}