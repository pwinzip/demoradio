import 'package:flutter/material.dart';
import 'package:radiodemo/utils/food.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Food> foods;
  String groupFood;

  @override
  void initState() {
    super.initState();
    foods = Food.getFood();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: createRadioFood(),
          // children: [
          // RadioListTile(
          //   title: Text('Shabu'),
          //   controlAffinity: ListTileControlAffinity.platform,
          //   value: 'shabu',
          //   groupValue: groupFood,
          //   onChanged: (value) {
          //     setState(() {
          //       groupFood = value;
          //     });
          //   },
          // ),
          // RadioListTile(
          //   title: Text('Steak'),
          //   controlAffinity: ListTileControlAffinity.platform,
          //   value: 'steak',
          //   groupValue: groupFood,
          //   onChanged: (value) {
          //     setState(() {
          //       groupFood = value;
          //     });
          //   },
          // ),
          // RadioListTile(
          //   title: Text('Salad'),
          //   controlAffinity: ListTileControlAffinity.platform,
          //   value: 'salad',
          //   groupValue: groupFood,
          //   onChanged: (value) {
          //     setState(() {
          //       groupFood = value;
          //     });
          //   },
          // ),
          // RadioListTile(
          //   title: Text('Sandwich'),
          //   controlAffinity: ListTileControlAffinity.platform,
          //   value: 'sandwich',
          //   groupValue: groupFood,
          //   onChanged: (value) {
          //     setState(() {
          //       groupFood = value;
          //     });
          //   },
          // ),
          // Container(
          //   padding: EdgeInsets.all(32),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Text(
          //         '$groupFood',
          //         style: TextStyle(
          //           fontSize: 36,
          //           color: Colors.pink,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          //------------------------------------------------------
          // _myRadioButton(
          //   title: "Checkbox 0",
          //   value: 0,
          //   onChanged: (newValue) => setState(() => _groupValue = newValue),
          // ),
          // _myRadioButton(
          //   title: "Checkbox 1",
          //   value: 1,
          //   onChanged: (newValue) => setState(() => _groupValue = newValue),
          // ),
          // ],
        ),
      ),
    );
  }

  List<Widget> createRadioFood() {
    List<Widget> myfoods = [];
    for (Food food in foods) {
      myfoods.add(
        RadioListTile(
          title: Text(food.engName),
          subtitle: Text(food.thaName),
          secondary: Text(food.price.toString()),
          controlAffinity: ListTileControlAffinity.platform,
          value: food.foodValue,
          groupValue: groupFood,
          onChanged: (value) {
            setState(() {
              groupFood = value;
            });
          },
          selected: true,
        ),
      );
    }
    return myfoods;

    // RadioListTile(
    //   title: Text('Pizza'),
    //   controlAffinity: ListTileControlAffinity.platform,
    //   value: 'pizza',
    //   groupValue: groupFood,
    //   onChanged: (value) {
    //     setState(() {
    //       groupFood = value;
    //     });
    //   },
    // );
  }

  // Widget _myRadioButton({String title, int value, Function onChanged}) {
  //   return RadioListTile(
  //     value: value,
  //     groupValue: _groupValue,
  //     onChanged: onChanged,
  //     title: Text(title),
  //   );
  // }
}
