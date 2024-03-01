import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  String? selectedEmoji;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Give Feedback',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20),
            _buildInputField(
              label: 'Email address (optional)',
              hintText: 'Enter your email',
              isBold: true,
            ),
            SizedBox(height: 20),
            _buildInputField(
              label: 'Comment, if any?',
              hintText: 'Enter your comment',
              maxLines: 5,
              isBold: true,
            ),
            SizedBox(height: 20),
            Text(
              'Rate your experience',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildEmojiButton('😡', 'Very bad'),
                _buildEmojiButton('😞', 'Bad'),
                _buildEmojiButton('😐', 'Normal'),
                _buildEmojiButton('😊', 'Good'),
                _buildEmojiButton('😄', 'Very good'),
              ],
            ),
            SizedBox(height: 20),
            _buildSelectedEmoji(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showThankYouDialog(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue[900],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'Publish Feedback',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField({
    required String label,
    required String hintText,
    int? maxLines,
    bool isBold = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        SizedBox(height: 10),
        TextField(
          maxLines: maxLines ?? 1,
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }

  Widget _buildEmojiButton(String emoji, String label) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedEmoji = emoji;
            });
          },
          child: Text(
            emoji,
            style: TextStyle(fontSize: 30),
          ),
        ),
        SizedBox(height: 5),
        Text(label),
      ],
    );
  }

  Widget _buildSelectedEmoji() {
    return selectedEmoji != null
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Selected Emoji: ',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                selectedEmoji!,
                style: TextStyle(fontSize: 30),
              ),
            ],
          )
        : Container();
  }

  void _showThankYouDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/image.png',
                height: 100,
              ),
              SizedBox(height: 20),
              Text(
                'Thank you!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'By making your voice heard',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'GO BACK',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
