import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {

    String name = await Future.delayed(Duration(seconds: 3), () {
      return "Quang";
    });

    String fistName = await Future.delayed(Duration(seconds: 2), () {
      return "Cao Huu";
    });

    print('Ho va ten: $fistName $name');
  }

  int counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    print('In cai gi thi in');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text(
          'Choose Location',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  counter ++;
                });
              },
              icon: Icon(Icons.add),
              label: Text('Cộng thêm = $counter')
          ),
        ],
      ),
    );
  }
}
