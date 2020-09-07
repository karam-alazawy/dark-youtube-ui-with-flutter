import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube/provider/mainContent.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            //  width: 130,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 5),
                  width: 30,
                  child: Image.asset("assets/logo.png"),
                ),
                Container(
                  child: Text(
                    "YouTube",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 160,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Icon(Icons.cast_connected, color: Colors.grey[400]),
              ),
              Container(
                  child: Icon(Icons.camera_roll, color: Colors.grey[400])),
              Container(child: Icon(Icons.search, color: Colors.grey[400])),
              Container(
                  child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://yt3.ggpht.com/a/AATXAJwZBQb2Sw4hD5m0wwZUrN5E43RixhG2Q0DCCCZWbA=s88-c-k-c0x00ffffff-no-rj"),
              )),
            ],
          ),
        )
      ],
    );
  }
}
