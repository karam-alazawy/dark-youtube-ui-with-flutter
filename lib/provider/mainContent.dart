import 'package:flutter/material.dart';

class Channel {
  final title;
  final channelName;
  final pic;
  final duration;
  final views;
  final date;

  Channel(this.title, this.pic, this.channelName, this.duration, this.views,
      this.date);
}

class Channels with ChangeNotifier {
  MediaQueryData queryData;
  var smallerWedget = false;
  setSmaller() {
    smallerWedget = true;
    notifyListeners();
  }

  setSmallerNot() {
    smallerWedget = false;
    notifyListeners();
  }

  Channel selected;
  setSelected(v) {
    selected = v;
    notifyListeners();
  }

  var channels = [
    Channel(
      "Relaxing Music with Beautiful Nature - Peaceful Piano & Guitar Music by Soothing Relaxation",
      "https://scontent.fbgw1-2.fna.fbcdn.net/v/t1.0-9/67694127_2100539733384142_6933293344323796992_n.jpg?_nc_cat=104&_nc_sid=174925&_nc_ohc=uUlbmnkt8ZoAX-1D444&_nc_ht=scontent.fbgw1-2.fna&oh=b02f6ea29b63b4f70238de053a200051&oe=5F79A2BF",
      "Google",
      "26.08",
      "370K",
      "26.08.20",
    ),
    Channel(
      "STUDY WITH ME with music | late night study session!",
      "https://scontent.fbgw1-2.fna.fbcdn.net/v/t1.0-9/116218317_2843478072423634_2532563176760994231_n.jpg?_nc_cat=107&_nc_sid=09cbfe&_nc_ohc=La5l7CdwGAEAX8EDnMy&_nc_ht=scontent.fbgw1-2.fna&oh=613c6d20e8b83fe55296b5fef2f1bf90&oe=5F768570",
      "Film Gamed!",
      "21.01",
      "370K",
      "26.08.20",
    ),
    Channel(
      "Flutter - Fancy Circular Progress Indicators WITHOUT Custom Paint | Flutter UI Tutorial",
      "https://scontent.fbgw1-2.fna.fbcdn.net/v/t1.0-9/67798395_2108488785922570_2043972346301120512_n.jpg?_nc_cat=110&_nc_sid=174925&_nc_ohc=LYGbXLKUFfMAX960Bcr&_nc_ht=scontent.fbgw1-2.fna&oh=776fca7d086f6ad0f06e56d863b7e5dc&oe=5F77A870",
      "Flutter way",
      "26.20",
      "370K",
      "26.08.20",
    ),
    Channel(
      "Flutter MediaQuery & SafeArea Widget - Flutter Widget Essentials #7 | Flutter Tutorial",
      "https://scontent.fbgw1-2.fna.fbcdn.net/v/t1.0-9/67694127_2100539733384142_6933293344323796992_n.jpg?_nc_cat=104&_nc_sid=174925&_nc_ohc=uUlbmnkt8ZoAX-1D444&_nc_ht=scontent.fbgw1-2.fna&oh=b02f6ea29b63b4f70238de053a200051&oe=5F79A2BF",
      "Hi Show",
      "08.20",
      "370K",
      "26.08.20",
    ),
    Channel(
      "sommy",
      "https://scontent.fbgw1-2.fna.fbcdn.net/v/t1.0-9/116218317_2843478072423634_2532563176760994231_n.jpg?_nc_cat=107&_nc_sid=09cbfe&_nc_ohc=La5l7CdwGAEAX8EDnMy&_nc_ht=scontent.fbgw1-2.fna&oh=613c6d20e8b83fe55296b5fef2f1bf90&oe=5F768570",
      "Menello",
      "28.20",
      "370K",
      "26.08.20",
    ),
    Channel(
      "karam alzawy",
      "https://scontent.fbgw1-2.fna.fbcdn.net/v/t1.0-9/116218317_2843478072423634_2532563176760994231_n.jpg?_nc_cat=107&_nc_sid=09cbfe&_nc_ohc=La5l7CdwGAEAX8EDnMy&_nc_ht=scontent.fbgw1-2.fna&oh=613c6d20e8b83fe55296b5fef2f1bf90&oe=5F768570",
      "How",
      "26.00",
      "370K",
      "26.08.20",
    ),
    Channel(
      "Mohamed abd",
      "https://scontent.fbgw1-2.fna.fbcdn.net/v/t1.0-9/109626813_2812755522162556_6095838179687023031_o.jpg?_nc_cat=104&_nc_sid=174925&_nc_ohc=6xQFJFwKnK4AX_u45ir&_nc_ht=scontent.fbgw1-2.fna&oh=0119a29701d324f1d01c65d887d7c30d&oe=5F7A1850",
      "Hell",
      "26.00",
      "370K",
      "26.08.20",
    ),
    Channel(
      "tommy",
      "https://scontent.fbgw1-2.fna.fbcdn.net/v/t1.0-9/67798395_2108488785922570_2043972346301120512_n.jpg?_nc_cat=110&_nc_sid=174925&_nc_ohc=LYGbXLKUFfMAX960Bcr&_nc_ht=scontent.fbgw1-2.fna&oh=776fca7d086f6ad0f06e56d863b7e5dc&oe=5F77A870",
      "any",
      "28.20",
      "370K",
      "26.08.20",
    ),
    Channel(
      "alzawy",
      "https://scontent.fbgw1-2.fna.fbcdn.net/v/t1.0-9/67694127_2100539733384142_6933293344323796992_n.jpg?_nc_cat=104&_nc_sid=174925&_nc_ohc=uUlbmnkt8ZoAX-1D444&_nc_ht=scontent.fbgw1-2.fna&oh=b02f6ea29b63b4f70238de053a200051&oe=5F79A2BF",
      " Are You here !?",
      "28.20",
      "370K",
      "26.08.20",
    ),
    Channel(
      "sommy",
      "https://scontent.fbgw1-2.fna.fbcdn.net/v/t1.0-9/116218317_2843478072423634_2532563176760994231_n.jpg?_nc_cat=107&_nc_sid=09cbfe&_nc_ohc=La5l7CdwGAEAX8EDnMy&_nc_ht=scontent.fbgw1-2.fna&oh=613c6d20e8b83fe55296b5fef2f1bf90&oe=5F768570",
      "Hello",
      "26.00",
      "370K",
      "26.08.20",
    ),
    Channel(
      "sommy",
      "https://scontent.fbgw1-2.fna.fbcdn.net/v/t1.0-9/116218317_2843478072423634_2532563176760994231_n.jpg?_nc_cat=107&_nc_sid=09cbfe&_nc_ohc=La5l7CdwGAEAX8EDnMy&_nc_ht=scontent.fbgw1-2.fna&oh=613c6d20e8b83fe55296b5fef2f1bf90&oe=5F768570",
      "Hello",
      "26.00",
      "370K",
      "26.08.20",
    ),
    Channel(
      "sommy",
      "https://scontent.fbgw1-2.fna.fbcdn.net/v/t1.0-9/116218317_2843478072423634_2532563176760994231_n.jpg?_nc_cat=107&_nc_sid=09cbfe&_nc_ohc=La5l7CdwGAEAX8EDnMy&_nc_ht=scontent.fbgw1-2.fna&oh=613c6d20e8b83fe55296b5fef2f1bf90&oe=5F768570",
      "Hello",
      "26.00",
      "370K",
      "26.08.20",
    ),
  ];

  //Channels(this.queryData);
}
