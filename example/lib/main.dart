import 'package:flutter/material.dart';
import 'package:html_editor/html_editor.dart';

/**
 * Created by riyadi rb on 2/5/2020.
 * link  : https://github.com/xrb21/flutter-html-editor
 */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Demo Flutter HTML Editor'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<HtmlEditorState> keyEditor = GlobalKey();
  String result = "";
  bool showEditor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Center(
        //padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              showEditor ? HtmlEditor(
                hint: "Your text here...",
                //value: "text content initial, if any",
                key: keyEditor,
                height: 200,
              ) :
              TextField(
                onTap: () {
                  setState(() {
                    showEditor = true;
                  });
                },
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
