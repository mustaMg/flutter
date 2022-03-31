import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(33, 33, 33, 1.0),
      appBar: AppBar(
        centerTitle: false,
        leading: const Padding(
          padding: EdgeInsets.all(9.0),
          child: Image(
            image: AssetImage(
              'assets/images/youtube_logo2.png',
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(33, 33, 33, 1.0),
        title: Text(
          "YouTube",
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 22,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cast,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_outlined,
              size: 30,
            ),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            YoutubeVideo(
              thmnail: const AssetImage(
                'assets/images/thmnail1.jpg',
              ),
              Pimage: const AssetImage('assets/images/IMG_0899.jpg'),
              Vtext: 'YORU FAKE CLONE FOOLS RADIANTS',
              Vinfo: "Red | 1.9M views | 12 hours ago",
            ),
            YoutubeVideo(
              thmnail: const AssetImage(
                'assets/images/thmnail2.jpg',
              ),
              Pimage: const AssetImage('assets/images/profile.jpg'),
              Vtext: 'HEY THIS IS WORKING',
              Vinfo: "Red | 10.9M views | 12 hours ago",
            ),
            YoutubeVideo(
              thmnail: const AssetImage(
                'assets/images/thmnail3.jpg',
              ),
              Pimage: const AssetImage('assets/images/IMG_0899.jpg'),
              Vtext: 'YORU FAKE CLONE FOOLS RADIANTS',
              Vinfo: "Red | 1.9M views | 12 hours ago",
            ),
            YoutubeVideo(
              thmnail: const AssetImage(
                'assets/images/thmnail2.jpg',
              ),
              Pimage: const AssetImage('assets/images/profile.jpg'),
              Vtext: 'YORU FAKE CLONE FOOLS RADIANTS',
              Vinfo: "Red | 1.9M views | 12 hours ago",
            ),
          ],
        ),
      ),
    );
  }
}

class YoutubeVideo extends StatelessWidget {
  YoutubeVideo(
      {required this.thmnail,
      required this.Pimage,
      required this.Vtext,
      required this.Vinfo});

  final AssetImage thmnail;
  final AssetImage Pimage;
  final String Vtext;
  final String Vinfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image(image: thmnail),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: Pimage,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      Vtext,
                      style:
                          GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  Container(
                    child: Text(
                      Vinfo,
                      textAlign: TextAlign.start,
                      style:
                          GoogleFonts.roboto(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 5,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

