import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade400,
          title: Text("My Personal Information"),
        ),
        backgroundColor: Colors.blue.shade700,
        body: SafeArea(
          child: const Column(
            children: [
              Text("Neil Aron P. Pascual"),
              Text("Pobalcion Balunago, Pangasinan"),
              Text("Think No Limits")
            ],
          ),
        ),
      ),
    ),
  );
}
