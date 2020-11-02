import 'package:flutter/material.dart';
import 'package:my_app/model/model.dart';
import 'package:my_app/utils/event_builder.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HomeNotifier homeNotifier;
  TestModel testModel;
  @override
  initState() {
    super.initState();
    testModel = TestModel();
    homeNotifier = HomeNotifier(HomeData());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: Container(
              child: Column(children: [
            EventBuilder(
                model: testModel,
                events: ['test'],
                builder: (context, model) {
                  return Text('${model.count}');
                }),
            RaisedButton(
                child: Text('Click'),
                onPressed: () {
                  testModel.increment();
                })
          ])
              // child: Column(children: [
              //   Container(
              //       margin: EdgeInsets.all(10),
              //       height: allHeight - bottomHeight - space - 20,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(8),
              //           color: Color.fromRGBO(200, 202, 220, 200),
              //           border: Border.all(
              //             color: Colors.blueAccent,
              //             width: 1,
              //           )),
              //       child: FileList(
              //         fileList: model == null ? [] : model.value.fileList,
              //       )),
              //   SizedBox(height: space),
              //   Container(
              //     child: BottomBar(),
              //     height: bottomHeight,
              //   )
              // ]),
              )),
    );
  }
}
