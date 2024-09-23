import 'package:flutter/material.dart';
import 'package:smm_application/components/smm_app_bar.dart';

class SMMAppBarMainAppBarExample extends StatefulWidget {
  const SMMAppBarMainAppBarExample({super.key});

  @override
  State<SMMAppBarMainAppBarExample> createState() =>
      _SMMAppBarMainAppBarExampleState();
}

class _SMMAppBarMainAppBarExampleState
    extends State<SMMAppBarMainAppBarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SMMAppBar.myAccount(),
      body: Container(),
    );

    // return MyAccountPage();
  }
}

class MyAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        toolbarHeight: 100,

        automaticallyImplyLeading: false,
        title: Container(
          color: Colors.blue,
          height: kToolbarHeight,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
            child: Row(
              children: [
                Text(
                  'บัญชีของฉัน', // "My Account" in Thai
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        // actions: <Widget>[
        //   IconButton(
        //     icon: Stack(
        //       children: <Widget>[
        //         Icon(Icons.notifications, size: 30),
        //         Positioned(
        //           right: 0,
        //           child: Container(
        //             padding: EdgeInsets.all(1),
        //             decoration: BoxDecoration(
        //               color: Colors.white,
        //               borderRadius: BorderRadius.circular(6),
        //             ),
        //             constraints: BoxConstraints(
        //               minWidth: 18,
        //               minHeight: 18,
        //             ),
        //             child: Text(
        //               '99+',
        //               style: TextStyle(
        //                 color: Colors.red,
        //                 fontSize: 12,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //               textAlign: TextAlign.center,
        //             ),
        //           ),
        //         )
        //       ],
        //     ),
        //     onPressed: () {},
        //   ),
        //   IconButton(
        //     icon: Stack(
        //       children: <Widget>[
        //         Icon(Icons.message, size: 30),
        //         Positioned(
        //           right: 0,
        //           child: Container(
        //             padding: EdgeInsets.all(1),
        //             decoration: BoxDecoration(
        //               color: Colors.white,
        //               borderRadius: BorderRadius.circular(6),
        //             ),
        //             constraints: BoxConstraints(
        //               minWidth: 18,
        //               minHeight: 18,
        //             ),
        //             child: Text(
        //               '99',
        //               style: TextStyle(
        //                 color: Colors.red,
        //                 fontSize: 12,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //               textAlign: TextAlign.center,
        //             ),
        //           ),
        //         )
        //       ],
        //     ),
        //     onPressed: () {},
        //   ),
        //   IconButton(
        //     icon: Stack(
        //       children: <Widget>[
        //         Icon(Icons.shopping_cart, size: 30),
        //         Positioned(
        //           right: 0,
        //           child: Container(
        //             padding: EdgeInsets.all(1),
        //             decoration: BoxDecoration(
        //               color: Colors.white,
        //               borderRadius: BorderRadius.circular(6),
        //             ),
        //             constraints: BoxConstraints(
        //               minWidth: 18,
        //               minHeight: 18,
        //             ),
        //             child: Text(
        //               '9',
        //               style: TextStyle(
        //                 color: Colors.red,
        //                 fontSize: 12,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //               textAlign: TextAlign.center,
        //             ),
        //           ),
        //         )
        //       ],
        //     ),
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: Center(child: Text('My Account Page')),
    );
  }
}
