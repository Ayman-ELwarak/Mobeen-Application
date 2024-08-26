import 'package:flutter/material.dart';
class ReportSection extends StatelessWidget {
  final String title;
  final String content;
  final String? highlightText;

  ReportSection({required this.title, required this.content, this.highlightText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20.0,left: 7.0,right: 7.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Color(0xFFC5C5C5),
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
          ),
          SizedBox(height: 8),
          RichText(
            text: TextSpan(
              text: '',
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: content,
                  style: TextStyle(color: Colors.black),
                ),
                if (highlightText != null)
                  TextSpan(
                    text: ' $highlightText',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}