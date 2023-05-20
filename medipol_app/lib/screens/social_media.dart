import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
class SocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(8.0), child: Material(color: Colors.grey.shade100,
            elevation: 4,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(20),
              height: 300,
              width: double.infinity,
              child: Column(
                  children: <Widget>[
                    Row(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/social_media.png'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            'Sosyal Medya Hesaplarımız',
                            style: TextStyle(fontSize: 25),
                            textAlign: TextAlign.center,),
                        ]),
                    Center(
                      child: Container(
                        height: 500,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white10,
                              offset: Offset(3, 3),
                              blurRadius: 10.0,),
                          ],
                        ),
                          child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: GestureDetector(
                                  onTap: () {
                                    _launch();
                                  },
                                  child: Image.asset(
                                    "assets/images/twitterrrr.png",
                                    height: 75.0,
                                    width: 80.0,
                                  ),
                                ),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                child: GestureDetector(
                                  onTap: () {
                                    _launch1();},
                                  child: Image.asset(
                                    "assets/images/face.png",
                                    height: 80.0,
                                    width: 75.0,
                                  ),
                                ),
                              ),
                              SizedBox(width: 27,),
                              Container(
                                child: GestureDetector(
                                  onTap: () {
                                    _launch2();
                                  },
                                  child: Image.asset(
                                    "assets/images/iins.png",
                                    height: 60.0,
                                    width: 60.0,
                                  ),
                                ),
                              ),
                              SizedBox(width: 27,),
                              Container(
                                child: GestureDetector(
                                  onTap: () {
                                    _launch3();
                                  },
                                  child: Image.asset(
                                    "assets/images/linkedln.png",
                                    height: 60.0,
                                    width: 55.0,
                                  ),
                                ),
                              ),
                              SizedBox(width: 27,),
                              Container(
                                child: GestureDetector(
                                  /* GestureDetector , içine aldığı widgetin ( mesela Container ) bulunduğu bölgeye tıklayınca
bir eylem yaratmasını sağlar*/  onTap: () {
                                    _launch4();},
                                  child: Image.asset(
                                    "assets/images/youtube.png",// Youtube resmidir.
                                    height: 60.0,
                                    width: 55.0,),),), SizedBox(width: 27,), Container(child: GestureDetector(onTap: () {_launch5();},
      child: Image.asset("assets/images/spotify.png", height: 60.0, width: 55.0,),),),],),),),),]),)));}
  void _launch() async {
    const url = "https://twitter.com/AnkaraMedipol";
    // Link girişini sağlar.
    if (await canLaunch(Uri.encodeFull(url))) {
      await launch(url);
    } else {
      throw "Could not launch $url";}}
  Future<void> _launch1() async {const url = "https://www.facebook.com/medipolankara/";
    if (await canLaunch(Uri.encodeFull(url))) {
      await launch(url);} else {throw "Could not launch $url";}}}
Future<void> _launch2() async {const url = "https://www.instagram.com/medipolankara/?hl=en";if (await canLaunch(Uri.encodeFull(url))) {
    await launch(url);} else {throw "Could not launch $url"; }}
Future<void> _launch3() async {const url = "https://www.linkedin.com/company/ankara-medipol-%C3%BCniversitesi/";if (
await canLaunch(Uri.encodeFull(url))) {await launch(url);} else {throw "Could not launch $url";}}
Future<void> _launch4() async {const url = "https://www.youtube.com/channel/UCwRrTac4ddj3AoycV76TfdA";if (await canLaunch(Uri.encodeFull
  (url))) {await launch(url);} else {   throw "Could not launch $url";}}
Future<void> _launch5() async {const url = "https://open.spotify.com/show/3pN9jBRiUpf14P2hDMr2xh?si=1b00cb495a1d4778";
  if (await canLaunch(Uri.encodeFull(url))) {
    await launch(url);} else {throw "Could not launch $url";}}










