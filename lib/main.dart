import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Color(0xFF000000),
          brightness: Brightness.dark,
          textTheme:
              TextTheme(bodyText1: TextStyle()).apply(bodyColor: Colors.white)),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    String dropdown = "Technical Indicators";
    String dropdown1 = "Classic";
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("USD/INR"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            child: DropdownButton<String>(
              focusColor: Colors.white,
              value: dropdown,
              onChanged: (String newValue) {
                setState(() {
                  dropdown = newValue;
                });
              },
              items: <String>['Technical Indicators']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                "Summary",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          child: StepProgressIndicator(
                            totalSteps: 100,
                            currentStep: 5,
                            size: 18,
                            padding: 0,
                            selectedColor: Colors.yellow,
                            roundedEdges: Radius.circular(20),
                            direction: Axis.vertical,
                            selectedGradientColor: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.blue,
                                  Colors.blueGrey,
                                ]),
                            unselectedGradientColor: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.blue,
                                  Colors.blueAccent,
                                ]),
                          ),
                        ),
                        Container(
                          child: StepProgressIndicator(
                            totalSteps: 100,
                            currentStep: 5,
                            size: 18,
                            padding: 0,
                            selectedColor: Colors.yellow,
                            roundedEdges: Radius.circular(20),
                            direction: Axis.vertical,
                            selectedGradientColor: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.blue,
                                  Colors.blueAccent,
                                ]),
                            unselectedGradientColor: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.yellowAccent,
                                  Colors.yellow,
                                ]),
                          ),
                        ),
                        Container(
                          child: StepProgressIndicator(
                            totalSteps: 100,
                            currentStep: 33,
                            size: 18,
                            padding: 0,
                            selectedColor: Colors.yellow,
                            roundedEdges: Radius.circular(20),
                            direction: Axis.vertical,
                            selectedGradientColor: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.red,
                                  Colors.redAccent,
                                ]),
                            unselectedGradientColor: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Colors.red, Colors.redAccent]),
                          ),
                        ),
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children: [
                          FlatButton(
                            child: Text(
                              "1 MIN",
                              style: TextStyle(color: Colors.white),
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 1),
                              borderRadius: new BorderRadius.circular(10),
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              "5 MIN",
                              style: TextStyle(color: Colors.white),
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 1),
                              borderRadius: new BorderRadius.circular(10),
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              "15 MIN",
                              style: TextStyle(color: Colors.white),
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 1),
                              borderRadius: new BorderRadius.circular(10),
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              "30 MIN",
                              style: TextStyle(color: Colors.white),
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 1),
                              borderRadius: new BorderRadius.circular(10),
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              "1 HR",
                              style: TextStyle(color: Colors.white),
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 1),
                              borderRadius: new BorderRadius.circular(10),
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              "1 HR",
                              style: TextStyle(color: Colors.white),
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 1),
                              borderRadius: new BorderRadius.circular(10),
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              "1 DAY",
                              style: TextStyle(color: Colors.white),
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 1),
                              borderRadius: new BorderRadius.circular(10),
                            ),
                          ),
                          FlatButton(
                            child: Text(
                              "1 WK",
                              style: TextStyle(color: Colors.white),
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 1),
                              borderRadius: new BorderRadius.circular(10),
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Center(
              child: Text(
                "Moving Averages",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: RaisedButton(
              color: Colors.blue,
              child: Text(
                "BUY",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1),
                borderRadius: new BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            "1",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        Text(
                          "Buy",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              "1",
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                          Text(
                            "Neutral",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              "9",
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                          Text(
                            "Sell",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: data(),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            "7",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        Text(
                          "Buy",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              "-",
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                          Text(
                            "Neutral",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              "5",
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                          Text(
                            "Sell",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Center(
              child: Text(
                "Oscillators",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: RaisedButton(
              color: Colors.pink,
              child: Text(
                "STRONG SELL",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1),
                borderRadius: new BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: data1(),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              child: Center(
            child: DropdownButton<String>(
              focusColor: Colors.white,
              value: dropdown1,
              onChanged: (String newValue) {
                setState(() {
                  dropdown1 = newValue;
                });
              },
              items: <String>['Classic']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
            ),
          )),
          Container(
            child: Center(
              child: Text(
                "Pivot Points",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: data2(),
          )
        ],
      )),
    );
  }

  Widget data() => DataTable(
          columns: <DataColumn>[
            DataColumn(
                label: Text('Name'),
                onSort: (i, b) {
                  setState(() {
                    names.sort((a, b) => a.period.compareTo(b.period));
                  });
                }),
            DataColumn(
                label: Text('Value'),
                onSort: (i, b) {
                  setState(() {
                    names.sort((a, b) => a.value.compareTo(b.value));
                  });
                }),
            DataColumn(
                label: Text('Action'),
                onSort: (i, b) {
                  setState(() {
                    names.sort((a, b) => a.type.compareTo(b.type));
                  });
                }),
          ],
          rows: names
              .map((name) => DataRow(cells: [
                    DataCell(
                      Text(name.period),
                    ),
                    DataCell(
                      Text(name.value),
                    ),
                    DataCell(
                      Text(name.type),
                    )
                  ]))
              .toList());
  Widget data1() => DataTable(
          columns: <DataColumn>[
            DataColumn(
                label: Text('Period'),
                onSort: (i, b) {
                  setState(() {
                    names1.sort((a, b) => a.Name.compareTo(b.Name));
                  });
                }),
            DataColumn(
                label: Text('Value'),
                onSort: (i, b) {
                  setState(() {
                    names1.sort((a, b) => a.Value.compareTo(b.Value));
                  });
                }),
            DataColumn(
                label: Text('Type'),
                onSort: (i, b) {
                  setState(() {
                    names1.sort((a, b) => a.Action.compareTo(b.Action));
                  });
                }),
          ],
          rows: names1
              .map((names1) => DataRow(cells: [
                    DataCell(
                      Text(names1.Name),
                    ),
                    DataCell(
                      Text(names1.Value),
                    ),
                    DataCell(
                      Text(names1.Action),
                    )
                  ]))
              .toList());
  Widget data2() => DataTable(
          columns: <DataColumn>[
            DataColumn(
                label: Text(''),
                onSort: (i, b) {
                  setState(() {
                    names2.sort((a, b) => a.pp.compareTo(b.points));
                  });
                }),
            DataColumn(
                label: Text(''),
                onSort: (i, b) {
                  setState(() {
                    names2.sort((a, b) => a.pp.compareTo(b.points));
                  });
                }),
          ],
          rows: names2
              .map((name2) => DataRow(cells: [
                    DataCell(
                      Text(name2.pp),
                    ),
                    DataCell(
                      Text(name2.points),
                    )
                  ]))
              .toList());
}

class Name {
  String period, value, type;
  Name({
    this.period,
    this.value,
    this.type,
  });
}

class Name1 {
  String Name, Value, Action;
  Name1({
    this.Name,
    this.Value,
    this.Action,
  });
}

class Name2 {
  String pp, points;
  Name2({
    this.pp,
    this.points,
  });
}

var names = <Name>[
  Name(period: "MA10", value: "465.28", type: "SELL"),
  Name(period: "MA20", value: "465.28", type: "SELL"),
  Name(period: "MA30", value: "465.28", type: "BUY"),
  Name(period: "MA50", value: "465.28", type: "BUY"),
  Name(period: "MA100", value: "465.28", type: "SELL"),
  Name(period: "MA200", value: "465.28", type: "BUY"),
];
var names1 = <Name1>[
  Name1(Name: "RSI14", Value: "-53.6549", Action: "SELL"),
  Name1(Name: "CCI(20)", Value: "-53.6549", Action: "SELL"),
  Name1(Name: "CCI(20)", Value: "-53.6549", Action: "BUY"),
  Name1(Name: "Awesome Oscillator", Value: "-53.6549", Action: "BUY"),
  Name1(Name: "Momentum (10)", Value: "-53.6549", Action: "SELL"),
  Name1(
      Name: "Stochastic RSI Fast (3, 3, 14, 14)",
      Value: "-53.6549",
      Action: "BUY"),
];
var names2 = <Name2>[
  Name2(pp: "S3", points: "456.87"),
  Name2(pp: "S2", points: "456.87"),
  Name2(pp: "S1", points: "456.87"),
  Name2(pp: "Pivot Points", points: "456.87"),
  Name2(pp: "R1", points: "456.87"),
  Name2(pp: "R2", points: "456.87"),
  Name2(pp: "R3", points: "456.87"),
];
