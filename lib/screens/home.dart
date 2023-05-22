import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do_list_application/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGcolor,
      appBar: _buildAppBar(),
      body: Container(
        child: Text('This is home screen.'),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent), // change status bar color
      backgroundColor: tdBGcolor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: tdBlack,
            size: 30,
          ),
          Container(
            width: 50,
            height: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/avatar(1).jpeg'),
            ),
          )
        ],
      ),
    );
  }
}
