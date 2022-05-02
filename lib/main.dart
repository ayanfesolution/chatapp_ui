import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChatAppUI(),
    );
  }
}

class ChatAppUI extends StatefulWidget {
  const ChatAppUI({Key? key}) : super(key: key);

  @override
  State<ChatAppUI> createState() => _ChatAppUIState();
}

class ChatBubbleRound extends StatelessWidget {
  const ChatBubbleRound({
    Key? key,
    required this.text,
    required this.isCurrentUser,
  }) : super(key: key);
  final String text;
  final bool isCurrentUser;

  @override
  Widget build(BuildContext context) {
    return Padding(
// asymmetric padding
      padding: EdgeInsets.fromLTRB(
        isCurrentUser ? 64.0 : 16.0,
        4,
        isCurrentUser ? 16.0 : 64.0,
        4,
      ),
      child: Align(
// align the child within the container
        alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
        child: DecoratedBox(
// chat bubble decoration
          decoration: BoxDecoration(
            color: isCurrentUser ? Colors.blue : Colors.grey[300],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: isCurrentUser ? Colors.white : Colors.black87, fontSize: 19)

            ),
          ),
        ),
      ),
    );
  }
}
class ChatBubbleEdge extends StatelessWidget {
  const ChatBubbleEdge({
    Key? key,
    required this.text,
    required this.isCurrentUser,
  }) : super(key: key);
  final String text;
  final bool isCurrentUser;

  @override
  Widget build(BuildContext context) {
    return Padding(
// asymmetric padding
      padding: EdgeInsets.fromLTRB(
        isCurrentUser ? 64.0 : 16.0,
        4,
        isCurrentUser ? 16.0 : 64.0,
        4,
      ),
      child: Align(
// align the child within the container
        alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
        child: DecoratedBox(
// chat bubble decoration
          decoration: BoxDecoration(
            color: isCurrentUser ? Colors.blue : Colors.grey[300],
            borderRadius: isCurrentUser ? const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ) : const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: isCurrentUser ? Colors.white : Colors.black87, fontSize: 19),
            ),
          ),
        ),
      ),
    );
  }
}

class _ChatAppUIState extends State<ChatAppUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        centerTitle: false,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
          backgroundImage: AssetImage('assets/ff4137ca1b9e731.png'),
          ),
        ),

        title: const Text('by Boldare',
            style: TextStyle(
            color: Colors.black,
              fontSize: 21,
              fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Image.asset('assets/Path 4.png')),
          IconButton(onPressed: () {}, icon: Image.asset('assets/Group 6.png')),
          IconButton(onPressed: () {}, icon: Image.asset('assets/Exclusion 3.png'))
        ],
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child:
            Center(
              child: Text('fri., 09:46 AM', style: TextStyle(
                fontSize: 16
              ),
              ),
            ),
          ),
          ChatBubbleRound(text: 'Hello, how are you?', isCurrentUser: true),
          ChatBubbleEdge(text: 'hi!', isCurrentUser: false),
          ChatBubbleEdge(text: """Thank you im fine!😏 \nHow was yesterday?""", isCurrentUser: false),
          ChatBubbleEdge(text: 'Oh man that was hard!', isCurrentUser: true),
          ChatBubbleEdge(text: 'but you should see Emma!', isCurrentUser: true),
          ChatBubbleRound(text: '😀😀 hehe', isCurrentUser: false),
          ChatBubbleEdge(text: 'Man ar u still here?', isCurrentUser: true),
          ChatBubbleEdge(text: 'Yes \nIm here \nWhat do you have to say again', isCurrentUser: false),
          ChatBubbleEdge(text: 'I have something very important to show you', isCurrentUser: true),
          ChatBubbleEdge(text: 'Which time will you be free \nlet us meet up', isCurrentUser: true),
          Padding(
            padding: EdgeInsets.all(10.0),
            child:
            Center(
              child: Text('fri., 12:46 AM', style: TextStyle(
                  fontSize: 16
              ),
              ),
            ),
          ),
          ChatBubbleRound(text: 'I dont know, I have a new project that i have to work on', isCurrentUser: false),
          ChatBubbleEdge(text: 'Alright, please let me know when you are ready', isCurrentUser: true),
          ChatBubbleRound(text: 'I will let you know. \nThanks for your concern', isCurrentUser: false),
          ChatBubbleEdge(text: 'Thanks', isCurrentUser: true)
        ],
      ),
      bottomSheet: SizedBox(
        height: 100,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.end,
              children: [
                IconButton(onPressed: () {}, icon: Image.asset('assets/Exclusion 1.png', height: 25)),
                IconButton(onPressed: () {}, icon: Image.asset('assets/Path 7.png', height: 25)),
                IconButton(onPressed: () {}, icon: Image.asset('assets/Path 9.png', height: 25)),
                IconButton(onPressed: () {}, icon: Image.asset('assets/Group 12.png', height: 25)),
                Expanded(
                    child: SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Color(0XFFE4E6EB),
                          filled:  true,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Image.asset('assets/Exclusion 2.png'),
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 0,style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(25)
                          )),
                      ),
                    )
                ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}



