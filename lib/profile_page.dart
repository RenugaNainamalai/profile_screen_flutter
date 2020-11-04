import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/profile_bloc.dart';
import 'bloc/profile_event.dart';
import 'bloc/profile_state.dart';

class ProfileUI extends StatefulWidget {
  const ProfileUI({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfileUI> {
  ProfileBloc profileBloc;

  @override
  void initState() {
    profileBloc = BlocProvider.of(context);
    profileBloc.add(FetchProfileEvent());
    super.initState();
  }

  @override
  void dispose() {
    profileBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile data"),
      ),
      body: Center(
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            if (state is ProfileInitialState) {
              return CircularProgressIndicator();
            } else if (state is ProfileLoadingState) {
              return CircularProgressIndicator();
            } else if (state is ProfileLoadedState) {
              return 
              Scaffold(
                body: SingleChildScrollView(
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      ),
                      //Expanded(
                      Container(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
                              child: Container(
                                height: 60,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      state.profileDatas.title,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3)),
                                    border: Border.all(
                                        width: 0.0, color: Colors.grey)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                              child: Container(
                                height: 60,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Email',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3)),
                                    border: Border.all(
                                        width: 0.0, color: Colors.grey)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                              child: Container(
                                height: 60,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Phone number',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3)),
                                    border: Border.all(
                                        width: 0.0, color: Colors.grey)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                              child: Container(
                                height: 60,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Date of birth',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3)),
                                    border: Border.all(
                                        width: 0.0, color: Colors.grey)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                              child: Container(
                                height: 60,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Country',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3)),
                                    border: Border.all(
                                        width: 0.0, color: Colors.grey)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                              child: Container(
                                height: 60,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'City',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3)),
                                    border: Border.all(
                                        width: 0.0, color: Colors.grey)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                              child: Container(
                                height: 60,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'State',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3)),
                                    border: Border.all(
                                        width: 0.0, color: Colors.grey)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                              child: Container(
                                height: 60,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Pincode',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3)),
                                    border: Border.all(
                                        width: 0.0, color: Colors.grey)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                              child: Container(
                                height: 60,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Street',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3)),
                                    border: Border.all(
                                        width: 0.0, color: Colors.grey)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // ),
                    ],
                  ),
                ),
              );
            } else if (state is ProfileErrorState) {
              return ErrorWidget(state.message.toString());
            }
          },
        ),
      ),
    );
  }
}

