import 'dart:io';

import 'package:flutter/material.dart';
import '../global_config.dart';
import 'follow.dart';
import 'recommend.dart';
import 'hot.dart';
import 'search_page.dart';
import 'ask_page.dart';

import '../global_config.dart';
import '../main.dart'; //传数据sqf_text



class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => new _HomePageState();

}

class _HomePageState extends State<HomePage> {

  Widget barSearch() {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new FlatButton.icon(
                onPressed: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) {
                      return new SearchPage();//点击搜索框就跳转到searchPage
                    }
                  ));
                },
                icon: new Icon(
                  Icons.search,
                  color: GlobalConfig.fontColor,
                  size: 20.0
                ),
                label: new Text(
                  "请输入搜索内容",
                  style: new TextStyle(fontSize: 16.0,color: GlobalConfig.fontColor),
                ),
              )
          ),
        ],
      ),
      decoration: new BoxDecoration(  //搜索框背景
        borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
        color: GlobalConfig.searchBackgroundColor,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 4,
        child: new Scaffold(
          appBar: new AppBar(
            title: barSearch(),
            bottom: new TabBar(
              labelColor: GlobalConfig.dark == true ? new Color(0xFF63FDD9) : Colors.blue,
              unselectedLabelColor: GlobalConfig.dark == true ? Colors.white : Colors.black,
              tabs: [
                new Tab(text: "关注"),
                new Tab(text: "学习"),
                new Tab(text: "娱乐"),
//                new Tab(text: sqf_text),
              ],
            ),
          ),
          body: new TabBarView(
              children: [

                new Follow(),
                new Follow(),
                new Follow(),
//                new Recommend(),
//                new Hot()
              ]
          ),
        ),
    );
  }

}