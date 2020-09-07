import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube/detScreen.dart';
import 'package:youtube/provider/mainContent.dart';
import 'package:youtube/wedgets/MyAppBar.dart';
import 'package:youtube/wedgets/cate.dart';

class MyHomePage extends StatelessWidget {
  _showModal(context) {
    showModalBottomSheet<dynamic>(
        enableDrag: false,
        isDismissible: true,
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) => DetScreen());
  }

  @override
  Widget build(BuildContext context) {
    final info = Provider.of<Channels>(context);

    return Scaffold(
      backgroundColor: Color(0xff282828),
      appBar: AppBar(
        backgroundColor: Color(0xff282828),
        title: MyAppBar(),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Color(0xff232323),
          padding: MediaQuery.of(context).size.width ~/ 300 >= 2
              ? EdgeInsets.only(left: 20, right: 20)
              : null,
          child: Column(
            children: [
              Cate(),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: info.channels.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 15,
                      childAspectRatio:
                          MediaQuery.of(context).size.width ~/ 300 >= 2
                              ? 2.45 / 2
                              : 2.7 / 2,
                      crossAxisCount: MediaQuery.of(context).size.width ~/ 300),
                  itemBuilder: (context, i) {
                    return Container(
                      margin: EdgeInsets.only(top: 0),
                      // color: Colors.red,
                      // height: 290,
                      // width: 400,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              info.setSmallerNot();
                              info.setSelected(info.channels[i]);
                              _showModal(context);
                            },
                            child: Container(
                              height: 220,
                              width: double.infinity,
                              alignment: Alignment.bottomRight,
                              decoration: BoxDecoration(
                                // color: Colors.green,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(info.channels[i].pic)),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 5, bottom: 3),
                                child: Text(
                                  info.channels[i].duration,
                                  style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 12,
                                      backgroundColor: Colors.black54),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            //    color: Colors.red,
                            height: 70,
                            width: double.infinity,

                            child: Transform.translate(
                              offset: Offset(-10, 0),
                              child: ListTile(
                                leading: Transform.translate(
                                  offset: Offset(0, -7),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(info
                                        .channels[Random()
                                            .nextInt(info.channels.length)]
                                        .pic),
                                    backgroundColor: Colors.black,
                                  ),
                                ),
                                title: Container(
                                  //height: 50,
                                  //  color: Colors.red,
                                  // padding: EdgeInsets.only(right: 40),
                                  margin: EdgeInsets.only(top: 5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Text(
                                      info.channels[i].title,
                                      style: TextStyle(
                                          color: Colors.grey[300],
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                      maxLines: 2,
                                    ),
                                  ),
                                ),
                                subtitle: Text(
                                    "${info.channels[i].channelName} . ${info.channels[i].views} views . ${info.channels[i].date}",
                                    style: TextStyle(
                                        color: Colors.grey[500], fontSize: 12)),
                                trailing: Transform.translate(
                                  offset: Offset(40, 0),
                                  child: Icon(
                                    Icons.more_vert,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
