import 'package:flutter/material.dart';
import 'package:flutter_dashboard/services/auth_service.dart';

import 'package:get/get.dart';

import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          '${AuthService.to.user.value.name}',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
