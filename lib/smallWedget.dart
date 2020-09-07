import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube/detScreen.dart';
import 'package:youtube/provider/mainContent.dart';

class SmallWedget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final info = Provider.of<Channels>(context);
    _showModal(context) {
      showModalBottomSheet<dynamic>(
          enableDrag: false,
          isDismissible: false,
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) => DetScreen());
    }

    return info.smallerWedget
        ? Positioned(
            bottom: 10,
            right: 10,
            child: GestureDetector(
              onTap: () {
                info.setSmallerNot();
                _showModal(context);
              },
              onHorizontalDragEnd: (h) {
                info.setSmallerNot();
              },
              child: Hero(
                tag: info.selected.channelName,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(info.selected.pic))),
                  width: 200,
                  height: 150,
                ),
              ),
            ))
        : Text("");
  }
}
