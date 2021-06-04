import 'package:core_box/custom_widgets/custom_login_button.dart';
import 'package:core_box/screens/home/widgets/systemItem/systemItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SystemModulesTab extends StatefulWidget {
  @override
  _SystemModulesTabState createState() => _SystemModulesTabState();
}

class _SystemModulesTabState extends State<SystemModulesTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: 700,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SystemItem(
                  systemName: 'Night lamp',
                  isSystemOn: true,
                  title: 'module info',
                  isSystemItem: false,
                ),
                SystemItem(
                  systemName: 'Night lamp',
                  isSystemOn: true,
                  title: 'module info',
                  isSystemItem: false,
                ),
                SystemItem(
                  systemName: 'Night lamp',
                  isSystemOn: true,
                  title: 'module info',
                  isSystemItem: false,
                ),
                SystemItem(
                  systemName: 'Night lamp',
                  isSystemOn: true,
                  title: 'module info',
                  isSystemItem: false,
                ),
                SystemItem(
                  systemName: 'Night lamp',
                  isSystemOn: true,
                  title: 'module info',
                  isSystemItem: false,
                ),
                CustomLogin(
                  title: 'Add module',
                  onPressed: () {},
                  backgroundColor: Color.fromRGBO(18, 111, 242, 1),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
