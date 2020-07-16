import 'package:flutter/material.dart';
import 'package:project06/styles/dimension/dimens.dart';
import 'package:project06/view/common/job_wrap.dart';
import 'package:project06/view/common/list_job.dart';
import 'package:project06/view/slider/advertising_slider.dart';

class ApplicantHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(preferredSize: Size.fromHeight(400),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.centerStart,
            children: <Widget>[
              Container(
                height: Dimens.size300,
                child: AdvertisingSlider(),
              ),
              Positioned(
                top: Dimens.size200,
                right: Dimens.size20,
                left: Dimens.size20,
                child: Container(
                  height: Dimens.size170,
                  margin: EdgeInsets.symmetric(horizontal: Dimens.size5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimens.size32),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.blue,
                      style: BorderStyle.solid,
                      width: Dimens.size1,
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Tìm kiếm',
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(Dimens.size35),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Dimens.size20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.blueAccent,
                                child: Icon(Icons.highlight_off),
                                radius: Dimens.size25,
                              ),
                              Text('Blog'),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.blueAccent,
                                child: Icon(Icons.highlight_off),
                                radius: Dimens.size25,
                              ),
                              Text('Visitor'),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.blueAccent,
                                child: Icon(Icons.highlight_off),
                                radius: Dimens.size25,
                              ),
                              Text('View'),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.blueAccent,
                                child: Icon(Icons.highlight_off),
                                radius: Dimens.size25,
                              ),
                              Text('Favorite'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
            overflow: Overflow.visible,
          ),
          SizedBox(height: Dimens.size80),
          Center(
            child: Text(
              'Đề xuất việc làm dành cho bạn',
              style: TextStyle(
                fontSize: Dimens.size20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: Dimens.size15),
       ],
      ),
      ),

      body: ListView(
        children: <Widget>[
          listJob(),
          jobWrap(),
          jobWrap(),
          jobWrap(),
          jobWrap(),
          jobWrap(),
        ],
      ),

    );
  }
}
