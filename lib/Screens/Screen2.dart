import 'package:carousel_slider/carousel_slider.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:tap/Webservices/provider.dart';
import 'package:video_player/video_player.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                // Color(0xFF42A5F5),
                Color(0xFF011C9C),
                Color(0xFF020F69)
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Consumer<CategoryProvider>(builder: (context, ca, _) {
              return ca.pro != null
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () => Navigator.pop(context)),
                        Container(
                          width: double.maxFinite,
                          height: MediaQuery.of(context).size.height * 0.6,
                          child: Container(
                              child: CarouselSlider(
                                  options: CarouselOptions(
                                    aspectRatio: 0.1,
                                    enlargeCenterPage: true,
                                    scrollDirection: Axis.horizontal,
                                    autoPlay: false,
                                    pauseAutoPlayOnManualNavigate: true,
                                    enableInfiniteScroll: true,
                                  ),
                                  items: ca.pro.data.profile.media
                                      .map(
                                        (e) => Container(
                                          child: Container(
                                            margin: EdgeInsets.all(5.0),
                                            child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5.0)),
                                                child: Stack(
                                                  children: <Widget>[
                                                    e.isVideo == true
                                                        ? Container(
                                                            child: VidP(
                                                              url: e.video,
                                                            ),
                                                          )
                                                        : Image.network(
                                                            e.filename,
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            fit: BoxFit.cover,
                                                          ),
                                                    Positioned(
                                                      bottom: 90,
                                                      right: 10,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(8.0),
                                                        child: Column(
                                                          children: [
                                                            CircleAvatar(
                                                              backgroundColor:
                                                                  Color(
                                                                      0xFF042093),
                                                              child: IconButton(
                                                                  icon: Icon(
                                                                    Icons
                                                                        .favorite_border,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  onPressed:
                                                                      () {}),
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            CircleAvatar(
                                                              backgroundColor:
                                                                  Color(
                                                                      0xFF042093),
                                                              child: IconButton(
                                                                  color: Color(
                                                                      0xFF042093),
                                                                  icon: Icon(
                                                                      Icons
                                                                          .thumb_down_alt_outlined,
                                                                      color: Colors
                                                                          .white),
                                                                  onPressed:
                                                                      () {}),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                          ),
                                        ),
                                      )
                                      .toList())),
                        ),
                        Container(
                          padding: EdgeInsets.all(40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${ca.pro.data.profile.name.toString()}' +
                                    ',' +
                                    '${ca.pro.data.profile.age.toString()}',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  height: 1.43,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '${ca.pro.data.profile.bio.toString()}',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  height: 1.43,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Basic Info',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  height: 1.43,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.0),
                                  color:
                                      const Color(0xFF495896).withOpacity(0.6),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Name',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                              height: 1.82,
                                            ),
                                            textHeightBehavior:
                                                TextHeightBehavior(
                                                    applyHeightToFirstAscent:
                                                        false),
                                          ),
                                          Text(
                                            '${ca.pro.data.profile.name}',
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                              height: 1.82,
                                            ),
                                            textHeightBehavior:
                                                TextHeightBehavior(
                                                    applyHeightToFirstAscent:
                                                        false),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.maxFinite,
                                      height: 2.0,
                                      color: const Color(0xFF0A2175)
                                          .withOpacity(0.37),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Gender',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                              height: 1.82,
                                            ),
                                            textHeightBehavior:
                                                TextHeightBehavior(
                                                    applyHeightToFirstAscent:
                                                        false),
                                          ),
                                          Text(
                                            '${ca.pro.data.profile.gender}',
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                              height: 1.82,
                                            ),
                                            textHeightBehavior:
                                                TextHeightBehavior(
                                                    applyHeightToFirstAscent:
                                                        false),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.maxFinite,
                                      height: 2.0,
                                      color: const Color(0xFF0A2175)
                                          .withOpacity(0.37),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Age',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                              height: 1.82,
                                            ),
                                            textHeightBehavior:
                                                TextHeightBehavior(
                                                    applyHeightToFirstAscent:
                                                        false),
                                          ),
                                          Text(
                                            '${ca.pro.data.profile.age}',
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                              height: 1.82,
                                            ),
                                            textHeightBehavior:
                                                TextHeightBehavior(
                                                    applyHeightToFirstAscent:
                                                        false),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.maxFinite,
                                      height: 2.0,
                                      color: const Color(0xFF0A2175)
                                          .withOpacity(0.37),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Location',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                              height: 1.82,
                                            ),
                                            textHeightBehavior:
                                                TextHeightBehavior(
                                                    applyHeightToFirstAscent:
                                                        false),
                                          ),
                                          Text(
                                            '${ca.pro.data.profile.location.address}',
                                            style: TextStyle(
                                              fontSize: 17.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                              height: 1.82,
                                            ),
                                            textHeightBehavior:
                                                TextHeightBehavior(
                                                    applyHeightToFirstAscent:
                                                        false),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.maxFinite,
                                      height: 2.0,
                                      color: const Color(0xFF0A2175)
                                          .withOpacity(0.37),
                                    ),
                                  ],
                                ),
                              ),
                              //personal info
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Personal Info',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  height: 1.43,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.0),
                                  color:
                                      const Color(0xFF495896).withOpacity(0.6),
                                ),
                                child: ListView(
                                  shrinkWrap: true,
                                  children: ca.pro.data.profile.basicInfo
                                      .map((e) => Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      '${e.key.name}',
                                                      style: TextStyle(
                                                        fontSize: 18.0,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        height: 1.82,
                                                      ),
                                                      textHeightBehavior:
                                                          TextHeightBehavior(
                                                              applyHeightToFirstAscent:
                                                                  false),
                                                    ),
                                                    Text(
                                                      '${e.value}',
                                                      style: TextStyle(
                                                        fontSize: 17.0,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        height: 1.82,
                                                      ),
                                                      textHeightBehavior:
                                                          TextHeightBehavior(
                                                              applyHeightToFirstAscent:
                                                                  false),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: double.maxFinite,
                                                height: 2.0,
                                                color: const Color(0xFF0A2175)
                                                    .withOpacity(0.37),
                                              ),
                                            ],
                                          ))
                                      .toList(),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ca.pro.data.profile.instagram.isNotEmpty
                                  ? Text(
                                      '100 Instagram Post',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        height: 1.43,
                                      ),
                                      textHeightBehavior: TextHeightBehavior(
                                          applyHeightToFirstAscent: false),
                                    )
                                  : Container(),
                              SizedBox(
                                height: 10,
                              ),

                              Row(
                                children: ca.pro.data.profile.instagram
                                    .map(
                                      (e) => Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage("urlImage"),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.2,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.1,
                                      ),
                                    )
                                    .toList(),
                              ),

                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Passions',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  height: 1.43,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),

                              Container(
                                child: StaggeredGridView.count(
                                  crossAxisCount: 2,
                                  physics: BouncingScrollPhysics(),
                                  children: ca.pro.data.profile.interests.map(
                                    (e) {
                                      return Container(
                                        alignment: Alignment(0.0, 0.15),
                                        width: 133.0,
                                        height: 133.0,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://api.zipconnect.app/img/interests/${e.image}'),
                                              fit: BoxFit.cover),
                                        ),
                                        child: SizedBox(
                                          width: 97.0,
                                          height: 37.0,
                                          child: Text(
                                            '${e.name}',
                                            style: TextStyle(
                                              fontFamily: 'Helvetica Neue',
                                              fontSize: 17.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                              height: 1.82,
                                            ),
                                            textHeightBehavior:
                                                TextHeightBehavior(
                                                    applyHeightToFirstAscent:
                                                        false),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      );
                                    },
                                  ).toList(),
                                  shrinkWrap: true,
                                  staggeredTiles: ca.pro.data.profile.interests
                                      .map(
                                        (e) => StaggeredTile.count(
                                          e.name.length % 1 == 0 ? 1 : 2,
                                          e.name.length % 2 == 0 ? 2 : 1,
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),

                              SizedBox(
                                height: 10,
                              ),

                              Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.080,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    color: Color(0xFF081C71),
                                    child: Center(
                                      child: Text(
                                        'REPORT',
                                        style: TextStyle(
                                          fontFamily: 'Helvetica Neue',
                                          fontSize: 13.0,
                                          color: Colors.white.withOpacity(0.6),
                                          fontWeight: FontWeight.w700,
                                          height: 2.31,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.080,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    color: const Color(0xFF2699FB),
                                    child: Center(
                                      child: Text(
                                        'UNPAIR',
                                        style: TextStyle(
                                          fontFamily: 'Helvetica Neue',
                                          fontSize: 13.0,
                                          color: Colors.white.withOpacity(0.6),
                                          fontWeight: FontWeight.w700,
                                          height: 2.31,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.080,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    color: Colors.blueGrey,
                                    child: Center(
                                      child: Text(
                                        'BLOCK',
                                        style: TextStyle(
                                          fontFamily: 'Helvetica Neue',
                                          fontSize: 13.0,
                                          color: Colors.white.withOpacity(0.6),
                                          fontWeight: FontWeight.w700,
                                          height: 2.31,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Center(child: CircularProgressIndicator());
            }),
          ),
        ),
      ),
    );
  }
}

class VidP extends StatefulWidget {
  String url;
  VidP({this.url});

  @override
  _VidPState createState() => _VidPState();
}

class _VidPState extends State<VidP> {
  @override
  void initState() {
    getIn();
    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  VideoPlayerController videoPlayerController;

  ChewieController chewieController;

  getIn() async {
    debugPrint(widget.url);
    videoPlayerController = VideoPlayerController.network('${widget.url}');

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: false,
      looping: false,
      allowFullScreen: true,
      allowMuting: true,
    );

    await videoPlayerController.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return chewieController != null
        ? Chewie(
            controller: chewieController,
          )
        : CircularProgressIndicator();
  }
}
