import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
      color: Colors.white,
      child: new ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              new Container(
                height: 250.0,
                color: Colors.white,
                child: new Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 20.0),
                        child: new Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                              size: 22.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25.0),
                              child: new Text('PROFILE',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      fontFamily: 'sans-serif-light',
                                      color: Colors.black)),
                            )
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: new Stack(fit: StackFit.loose, children: <Widget>[
                        new Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Container(
                                width: 140.0,
                                height: 140.0,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                    image: new ExactAssetImage(
                                        'assets/images/profile_pic.png'),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                          ],
                        ),
                      ]),
                    )
                  ],
                ),
              ),
              new Container(
                color: Color(0xffFFFFFF),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 25.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 0.0),
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Hello, I am',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 15.0),
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  GestureDetector(
                                    //onTap: _launchURL(),
                                    child: new Container(
                                      child: new Text(
                                        'Aravind Babu Jagarlamudi',
                                        style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )],
                              ),
                            ],
                          )),
                      Container(
                          color: Colors.green,
                          margin: EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 30.0, bottom: 10),
                          padding: EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 10.0, bottom: 10),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Personal Information',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Email ID',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  decoration: const InputDecoration(
                                      hintText: "jagarlamudiaravindbabu@gmail.com"),
                                  enabled: !_status,
                                ),
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Mobile',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Flexible(
                                child: new TextField(
                                  decoration: const InputDecoration(
                                      hintText: "+919398274873"),
                                  enabled: !_status,
                                ),
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  child: new Text(
                                    'DOB',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                flex: 2,
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 2.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 10.0),
                                  child: new TextField(
                                    decoration: const InputDecoration(
                                        hintText: "13-08-1999"),
                                    enabled: !_status,
                                  ),
                                ),
                                flex: 2,
                              ),
                            ],
                          )
                      ),

                Container(
                    color: Colors.green,
                    margin: EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 30.0, bottom: 10),
                    padding: EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 10.0, bottom: 10),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        new Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Text(
                              'Skills',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    )
                ),

                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 15.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Languages',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            left: 25.0, right: 25.0, top: 15.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                                child: ListView(
                                  //padding: EdgeInsets.all(0.0),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  children: const <Widget>[
                                    ListTile(
                                      leading: Icon(Icons.code),
                                      title: Text('Java'),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.code),
                                      title: Text('C'),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.code),
                                      title: Text('Python'),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.code),
                                      title: Text('HTML'),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.code),
                                      title: Text('CSS'),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.code),
                                      title: Text('Javascript'),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.code),
                                      title: Text('XML'),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(
                            left: 25.0, right: 25.0, top: 10.0),
                        height: 5,
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(16.0),
                          color: Colors.green,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Softwares',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),

                      Padding(
                        padding: EdgeInsets.only(
                            left: 25.0, right: 25.0, top: 15.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                                child: ListView(
                                  //padding: EdgeInsets.all(0.0),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  children: const <Widget>[
                                    ListTile(
                                      leading: Icon(Icons.code),
                                      title: Text('Android Studio'),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.code),
                                      title: Text('Unity'),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.code),
                                      title: Text('MS Office'),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.code),
                                      title: Text('MS Excel'),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(
                            left: 25.0, right: 25.0, top: 10.0),
                        height: 5,
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(16.0),
                          color: Colors.green,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Databases',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),

                      Padding(
                        padding: EdgeInsets.only(
                            left: 25.0, right: 25.0, top: 15.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                                child: ListView(
                                  //padding: EdgeInsets.all(0.0),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  children: const <Widget>[
                                    ListTile(
                                      leading: Icon(Icons.code),
                                      title: Text('SQL'),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.code),
                                      title: Text('Firebase'),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(
                            left: 25.0, right: 25.0, top: 10.0),
                        height: 5,
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(16.0),
                          color: Colors.green,
                        ),
                      ),

                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Others',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),

                      Padding(
                        padding: EdgeInsets.only(
                            left: 25.0, right: 25.0, top: 15.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                                child: ListView(
                                  //padding: EdgeInsets.all(0.0),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  children: const <Widget>[
                                    ListTile(
                                      leading: Icon(Icons.code),
                                      title: Text('Communication Skills'),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.code),
                                      title: Text('Video Editing'),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.code),
                                      title: Text('Leadership'),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.code),
                                      title: Text('Personality Development'),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),

                      Container(
                          color: Colors.green,
                          margin: EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 30.0, bottom: 10),
                          padding: EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 10.0, bottom: 10),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Achievements',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )
                      ),

                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Flexible(child: new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Won Prathibha Award for the excellence in Matriculation.',
                                    style: TextStyle(
                                      fontSize: 16.0,),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  ),
                                ],
                              ),)
                            ],
                          )),

                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Flexible(child: new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Come up with an innovative idea that connects students to the industries.',
                                    style: TextStyle(
                                      fontSize: 16.0,),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  ),

                                ],
                              ),)
                            ],
                          )),

                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Flexible(child: new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Completed Web development, Advanced communication and personality development workshops.',
                                    style: TextStyle(
                                      fontSize: 16.0,),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,

                                  ),
                                ],
                              ),)
                            ],
                          )),

                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Flexible(child: new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Have worked on differet Android applications and launched on playstore.',
                                    style: TextStyle(
                                      fontSize: 16.0,),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  ),
                                ],
                              ),)
                            ],
                          )),

                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Flexible(child: new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Have developed an application that connects farmers and workers.',
                                    style: TextStyle(
                                      fontSize: 16.0,),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  ),
                                ],
                              ),)
                            ],
                          )),

                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Flexible(child: new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[

                                  new Text(
                                    'Others',
                                    style: TextStyle(
                                      fontSize: 16.0,),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,

                                  ),
                                ],
                              ),)
                            ],
                          )),

                      Container(
                          color: Colors.green,
                          margin: EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 30.0, bottom: 10),
                          padding: EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 10.0, bottom: 10),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Social Links',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 15, bottom: 15),
                        child: new Stack(fit: StackFit.loose, children: <Widget>[
                          new Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () => _launchURL(1),
                                    child: new Container(
                                        margin: EdgeInsets.only(
                                            left: 10.0, right: 10.0, top: 5, bottom: 5),
                                        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.07, maxHeight: MediaQuery.of(context).size.width * 0.07),
                                        decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: new DecorationImage(
                                            image: new ExactAssetImage(
                                                'assets/images/fb.png'),
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                  ),
                                  ]),
                              new Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () => _launchURL(2),
                                      child: new Container(
                                          margin: EdgeInsets.only(
                                              left: 10.0, right: 10.0, top: 5, bottom: 5),
                                          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.07, maxHeight: MediaQuery.of(context).size.width * 0.07),
                                          decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                              image: new ExactAssetImage(
                                                  'assets/images/instagram.png'),
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                    ),
                                  ]),
                              new Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () => _launchURL(3),
                                      child: new Container(
                                          margin: EdgeInsets.only(
                                              left: 10.0, right: 10.0, top: 5, bottom: 5),
                                          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.07, maxHeight: MediaQuery.of(context).size.width * 0.07),
                                          decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                              image: new ExactAssetImage(
                                                  'assets/images/telegram.png'),
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                    ),
                                  ]),
                              new Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () => _launchURL(4),
                                      child: new Container(
                                          margin: EdgeInsets.only(
                                              left: 10.0, right: 10.0, top: 5, bottom: 5),
                                          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.07, maxHeight: MediaQuery.of(context).size.width * 0.07),
                                          decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                              image: new ExactAssetImage(
                                                  'assets/images/youtube.png'),
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                    ),
                                  ]),
                              new Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () => _launchURL(5),
                                      child: new Container(
                                                margin: EdgeInsets.only(
                                                left: 10.0, right: 10.0, top: 5, bottom: 5),
                                                constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.06, maxHeight: MediaQuery.of(context).size.width * 0.06),
                                                decoration: new BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: new DecorationImage(
                                                    image: new ExactAssetImage(
                                                        'assets/images/quora.png'),
                                                fit: BoxFit.cover,
                                                ),
                                            )),
                                    ),
                                  ]),
                            ],
                          ),
                        ]),
                      ),

                      Container(
                          color: Colors.green,
                          margin: EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 30.0, bottom: 10),
                          padding: EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 10.0, bottom: 10),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Github Profile',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )
                      ),

                      Padding(
                          padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 15, bottom: 15),
                          child: new Stack(fit: StackFit.loose, children: <Widget>[
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () => _launchURL(6),
                                        child: new Container(
                                            margin: EdgeInsets.only(
                                                left: 10.0, right: 10.0, top: 5, bottom: 5),
                                            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.07, maxHeight: MediaQuery.of(context).size.width * 0.07),
                                            decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                image: new ExactAssetImage(
                                                    'assets/images/github.png'),
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                      ),
                                    ]),
                              ],
                            ),
                          ],
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 0, bottom: 15),
                          child: new Stack(fit: StackFit.loose, children: <Widget>[
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    new Text(
                                      'TechZite Guru',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                          )
                      )

                  ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myFocusNode.dispose();
    super.dispose();
  }

  Widget _getActionButtons() {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 45.0),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Container(
                  child: new RaisedButton(
                child: new Text("Save"),
                textColor: Colors.white,
                color: Colors.green,
                onPressed: () {
                  setState(() {
                    _status = true;
                    FocusScope.of(context).requestFocus(new FocusNode());
                  });
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
              )),
            ),
            flex: 2,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Container(
                  child: new RaisedButton(
                child: new Text("Cancel"),
                textColor: Colors.white,
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    _status = true;
                    FocusScope.of(context).requestFocus(new FocusNode());
                  });
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
              )),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }

  Widget _openLinks() {
    return new GestureDetector(
      child: new CircleAvatar(
        backgroundColor: Colors.red,
        radius: 14.0,
        child: new Icon(
          Icons.edit,
          color: Colors.white,
          size: 16.0,
        ),
      ),
      onTap: () {
        setState(() {
          _status = false;
        });
      },
    );
  }
  _launchURL(int i) async {
    if (i == 1) {
      String url = 'https://www.facebook.com/aravind.babu.94651774/';
      _openURL(url);
    }
    else if (i == 2) {
      String url = 'https://www.instagram.com/aravindbabu_jagarlamudi/';
      _openURL(url);
    }
    else if (i == 3) {
      String url = 'https://t.me/techzite';
      _openURL(url);
    }
    else if (i == 4) {
      String url = 'https://www.youtube.com/channel/UCfh2pC_HaHSJsG8Mb5axjPg';
      _openURL(url);
    }
    else if (i == 5){
      String url = 'https://www.quora.com/profile/Aravind-Babu-Jagarlamudi';
      _openURL(url);
    }
    else if (i == 6){
      String url = 'https://github.com/TechZite-Guru';
      _openURL(url);
    }
  }

  _openURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
