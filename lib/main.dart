import 'package:flutter/material.dart';

class MyRowCustom extends StatelessWidget {
  const MyRowCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Row(
        children: [
          Expanded(child: Text("this is my text", textAlign: TextAlign.center)),
          Expanded(child: Text("this is my text", textAlign: TextAlign.center)),
          Expanded(child: Text("this is my text", textAlign: TextAlign.center)),
        ],
      ),
    );
  }
}

class MyColumnCustom extends StatelessWidget {
  const MyColumnCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // textDirection: TextDirection.ltr,
        // textDirection: TextDirection.rtl,
        children: [
          Text('We move under cover and we move as one'),
          Text('Through the night, we have one shot to live another day'),
          Text('We cannot let a stray gunshot give us away'),
          Text('We will fight up close, seize the moment and stay in it'),
          Text("It's either that or meet the business end of a bayonet"),
          Text("The code word is 'Rochambeau,' dig me?"),
          Text(
            "Rochambeau !",
            style: TextStyle(
                color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class MyStackCustom extends StatelessWidget {
  const MyStackCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      // child: Stack(
      //   alignment: Alignment.center,
      //   children: <Widget>[
      //      Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.red,
      //     ),
      //
      //      Container(
      //       width: 90,
      //       height: 90,
      //       color: Colors.blue,
      //     ),
      //
      //      Container(
      //       width: 80,
      //       height: 80,
      //       color: Colors.green,
      //     ),
      //   ],
      // ),
      child: SizedBox(
        width: 250,
        height: 250,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              color: Colors.greenAccent,
            ),
            Container(
              width: 250,
              height: 250,
              padding: const EdgeInsets.all(5.0),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withAlpha(0),
                      Colors.white.withAlpha(0),
                      Colors.purple
                    ]),
              ),
              child: const Text(
                "foreground Text",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyContainerCustom extends StatelessWidget {
  const MyContainerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      constraints: BoxConstraints.expand(
        height:
            Theme.of(context).textTheme.headlineMedium!.fontSize! * 1.1 + 200.0,
      ),
      padding: const EdgeInsets.all(20.0),
      color: Colors.blue[600],
      alignment: Alignment.center,
      transform: Matrix4.rotationZ(0.1),
      child: Text('Hello World',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Colors.white)),
    ));
  }
}

void main() {
  runApp(
    const MaterialApp(title: "My title", home: MyContainerCustom()
        // SafeArea(
        // child: MyRowCustom() // row
        // child: MyColumnCustom() // column
        // child: MyStackCustom() // Stack
        // ),
        ),
  );
}
