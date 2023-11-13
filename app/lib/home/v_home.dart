/*
 * "tick_client" created by @howyoujini on 2023/11/11  7:38 PM
 * Copyright (c) app.lib.home. All rights reserved.
 */
import 'package:flutter/material.dart';

part './string_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(_KoKrString.TITLE.text)));
  }
}
