import 'dart:async';

import 'dart:io';
//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    gotoHome();
    super.initState();
  }

  void gotoHome() async {
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Dashboard()));
    });
  }

  @override
  void dispose() {
    gotoHome();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Text('SSC Book Solution',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black))));
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List category = [
    {"name": "Home", "icon": "Icons.home"},
    {"name": "Science", "icon": "Icons.science"},
    {"name": "Commerce", "icon": "Icons.commerce"},
    {"name": "Arts", "icon": "Icons.arts"},
    {"name": "Like", "icon": "Icons.rate"},
    {"name": "Subscribe", "icon": "Icons.rate"},
    {"name": "Website", "icon": "Icons.rate"},
    {"name": "Exit", "icon": "Icons.exit"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SSC Book Solution"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeader(
                  child: Image.network(
                      "https://1.bp.blogspot.com/-sSzlgqamj3k/X-jUQPjpDoI/AAAAAAAAASE/OVsFGCMSm6E9KEK2w43SdMtb8gTuO8e-gCLcBGAsYHQ/s587/tourxlogo.png")),
              ListView.builder(
                  itemBuilder: ((context, index) => ListTile(
                        leading: Icon(
                            category.map((e) => e["icon"]).elementAt(index)),
                        title: Text(
                            category.map((e) => e["name"]).elementAt(index)),
                        onTap: () {
                          if (category.map((e) => e["name"]).elementAt(index) ==
                              "Exit") {
                            exit(0);
                          } else {
                            print(category
                                .map((e) => e["name"])
                                .elementAt(index));
                          }
                        },
                      )))
            ],
          ),
        ),
      ),
      body: GridView.builder(
          itemCount: 7,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              mainAxisExtent: 130),
          itemBuilder: (context, int) {
            return InkWell(
              onTap: (() {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return Lesson('Islam');
                }));
              }),
              child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Material(
                  elevation: 8,
                  child: Column(
                    children: [
                      Image.network(
                          "https://1.bp.blogspot.com/-sSzlgqamj3k/X-jUQPjpDoI/AAAAAAAAASE/OVsFGCMSm6E9KEK2w43SdMtb8gTuO8e-gCLcBGAsYHQ/s587/tourxlogo.png"),
                      Text("Book Name")
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class ApiService {
  String baseUrl = "";
}

class Lesson extends StatefulWidget {
  String bookName;
  Lesson(this.bookName);

  @override
  State<Lesson> createState() => _LessonState(bookName);
}

class _LessonState extends State<Lesson> {
  String bookName;
  _LessonState(this.bookName);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          title: Text("App Name"),
          subtitle: Text(bookName),
        ),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return ListTile(
            onTap: (() => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => Option(bookName, "", "", ""))))),
            title: Text(""),
          );
        }),
        itemCount: 7,
      ),
    );
  }
}

class Option extends StatelessWidget {
  String bookName;
  String LessonName;
  String mcqPdf;
  String readingPdf;
  Option(this.bookName, this.LessonName, this.mcqPdf, this.readingPdf);

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: ((context, index) {
        return GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, c) {
              return InkWell(
                onTap: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return PdfView(pdfURL: "d", pdfTitle: "dd");
                  }));
                }),
                child: Card(
                  child: Column(
                    children: [Image.asset(""), Text("")],
                  ),
                ),
              );
            });
      })),
    );
  }
}

class PdfView extends StatefulWidget {
  String pdfURL;
  String pdfTitle;

  PdfView({required this.pdfURL, required this.pdfTitle});

  @override
  State<PdfView> createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.asset(""),
    );
  }
}
