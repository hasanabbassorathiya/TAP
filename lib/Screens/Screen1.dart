import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:tap/Screens/Screen2.dart';
import 'package:tap/Webservices/provider.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    callApi();
    super.initState();
  }

  callApi() async {
    Provider.of<CategoryProvider>(context, listen: false).getCategories();
    Provider.of<CategoryProvider>(context, listen: false).getPaidProfile();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          automaticallyImplyLeading: true,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {}),
          title: Text(
            'Passions'.toUpperCase(),
            style: TextStyle(color: Colors.white),
          ),
        ),
        extendBodyBehindAppBar: true,
        extendBody: true,
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(20),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen2(),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF42A5F5),
                    Color(0xFF1976D2),
                    Color(0xFF0D47A1),
                  ],
                ),
              ),
              child: SizedBox(
                height: kToolbarHeight,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'CONTINUE'.toUpperCase(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
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
          child: Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.060),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'What are you into?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Pick at least 5',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    child: Consumer<CategoryProvider>(
                      builder: (context, ca, _) {
                        return ca.fmodel != null &&
                                ca.fmodel.data.interests.isNotEmpty
                            ? StaggeredGridView.count(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                crossAxisCount: 2,
                                physics: BouncingScrollPhysics(),
                                children: ca.fmodel.data.interests
                                    .map((e) => Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CircleAvatar(
                                            radius: 60.00,
                                            backgroundImage: NetworkImage(
                                              '${'https://api.zipconnect.app/img/interests/${e.image}'}',
                                            ),
                                            backgroundColor: Colors.transparent,
                                            child: Center(
                                              child: Text(
                                                '${e.name.toString()}',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  height: 2.5,
                                                ),
                                                textHeightBehavior:
                                                    TextHeightBehavior(
                                                        applyHeightToFirstAscent:
                                                            false),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ))
                                    .toList(),
                                staggeredTiles: ca.fmodel.data.interests
                                    .map(
                                      (e) => StaggeredTile.count(
                                        e.name.length % 1 == 0 ? 1 : 2,
                                        e.name.length % 2 == 0 ? 2 : 1,
                                      ),
                                    )
                                    .toList(), // scatter them randomly
                              )
                            : Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
