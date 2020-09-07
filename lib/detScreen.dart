import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube/provider/mainContent.dart';

class DetScreen extends StatefulWidget {
  @override
  _DetScreenState createState() => _DetScreenState();
}

class _DetScreenState extends State<DetScreen> {
  var h = 10.0;
  bool small = false;
  changeH(context) {
    setState(() {
      small = !small;
      if (small) {
        h = 90.0;
      } else {
        h = MediaQuery.of(context).size.height;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final info = Provider.of<Channels>(context);

    return AnimatedContainer(
      duration: Duration(seconds: 1),
      height: h == 10.0 ? MediaQuery.of(context).size.height : h,
      curve: Curves.fastOutSlowIn,
      child: small
          ? Container()
          : Dismissible(
              onResize: () {},
              direction: DismissDirection.vertical,
              key: const Key('key'),
              onDismissed: (_) {
                changeH(context);

                info.setSmaller();
                Navigator.pop(context);
              },
              child: GestureDetector(
                  // onScaleEnd: (details) {
                  //   changeH(context);
                  //   print(details);
                  //   Navigator.pop(context);
                  //   info.setSmaller();
                  // },
                  onTap: () => null,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: Scaffold(
                      backgroundColor: Colors.black,
                      body: Hero(
                        tag: info.selected.channelName,
                        child: Container(
                          width: double.infinity,
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(info.selected.pic))),
                          // height: h,
                          child: Text("data"),
                        ),
                      ),
                    ),
                  )),
            ),
    );
  }
}
