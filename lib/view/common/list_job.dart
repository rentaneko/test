import 'package:flutter/material.dart';
import 'package:project06/model/job/jobs.dart';
import 'package:project06/view/common/job_wrap.dart';
import 'package:project06/viewmodel/get_job_service.dart';

Widget listJob() {
  return FutureBuilder<List<Job>>(
      future: getJobService(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: <Widget>[
              jobWrapParams(snapshot.data[0].jobName, "Mina Comp", "Hanoi", 123, "VueJS", "12/12/12")
            ],
              //if (snapshot.data == null) Text("No data")
               //else for(int i = 0; i < snapshot.data.length; i++) jobWrapParams(snapshot.data[i].jobName, "Mina Comp", "Hanoi", 123, "VueJS", "12/12/12"),
          );
          //Center(child: Text(snapshot.data[0].email ?? ""));
        } else if (snapshot.error) {
          return Center(child: Text(snapshot.error));
        }
        return Center(child: CircularProgressIndicator());
      },
    );
}
