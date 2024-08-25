import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/components/BackBotton.dart';
import 'package:mobile_app/components/Menu.dart';

class Gettext extends StatefulWidget {
  String? recordingPath;
  Gettext({super.key, required this.recordingPath});

  @override
  State<Gettext> createState() => _GettextState();
}

class _GettextState extends State<Gettext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8CBBB6),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8CBBB6),
        leading: BackButtonContainer().create(context),
        actions: const [Menu()],
      ),
      body: Center(
        child: SizedBox(
          height: 3 * MediaQuery.of(context).size.height / 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Translation',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0x90C4C4C4),
                    ),
                    height: 3 * MediaQuery.of(context).size.height / 10,
                    width: double.infinity,
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Text('Everthing is fine'),
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  if (widget.recordingPath != null) {
                    final player = AudioPlayer();
                    player.play(DeviceFileSource(widget.recordingPath!));
                  } else {
                    print('NULL');
                  }
                },
                icon: const Icon(Icons.play_arrow),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
