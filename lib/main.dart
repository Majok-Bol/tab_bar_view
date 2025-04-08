import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:TopNavigationBar(),

    );
  }
}
class TopNavigationBar extends StatelessWidget{
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context){
    return DefaultTabController(length:3, child: Scaffold(
      appBar: AppBar(
      bottom:TabBar(tabs: [
        Tab(text: 'Chats',),
        Tab(text: 'Status',),
        Tab(text: 'Call',),
      ]),),
    body:TabBarView(children: [
      Center(child: Text('Chats screen'),),
      Center(child: Text('Status screen'),),
      Center(child: Text('Calls screen'),),
    ]),
    ),
    );
  }
}