import 'package:flutter/material.dart';
import 'package:project06/view/common/job_wrap.dart';
import 'package:project06/view/common/no_job_form.dart';

class ApplicantJob extends StatelessWidget {
  final List<Tab> jobTabs = <Tab>[
    Tab(
      text: 'Saved',
    ),
    Tab(
      text: 'Commited',
    ),
    Tab(
      text: 'Done',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: jobTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            tabs: jobTabs,
          ),
        ),
        body: TabBarView(
          children: <Widget>[savedScreen(), commitedScreen(), doneScreen()],
        ),
      ),
    );
  }

  Widget savedScreen() {
    return ListView(
      children: <Widget>[jobWrap()],
    );
  }

  Widget commitedScreen() {
    return NoJobForm();
  }

  Widget doneScreen() {
    return ListView(
      children: <Widget>[jobWrap()],
    );
  }
}
