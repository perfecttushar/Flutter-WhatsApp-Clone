import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsclone/pages/chatpage.dart';

class ChatsTab extends StatefulWidget {
  const ChatsTab({super.key});

  @override
  State<ChatsTab> createState() => _ChatsTabState();
}

class _ChatsTabState extends State<ChatsTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        ListTile(
          minVerticalPadding: 15,
          onTap: () => Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const ChatPage(),
            ),
          ),
          leading: Image.asset(
            'lib/images/mom.png',
            height: 50,
          ),
          title: const Text(
            'Mom',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            'Did you find the keys ?',
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
          trailing: Text(
            '27/02/24',
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ),

        //
        //
        //

        ListTile(
          minVerticalPadding: 15,
          leading: Image.asset(
            'lib/images/dad.png',
            height: 50,
          ),
          title: const Text(
            'Dad',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            'Meet me around 5 pm',
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
          trailing: Text(
            '1:14 PM',
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ),

        //
        //
        //

        ListTile(
          minVerticalPadding: 15,
          leading: Image.asset(
            'lib/images/sis.png',
            height: 50,
          ),
          title: const Text(
            'Sister',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          subtitle: Row(
            children: [
              Icon(
                Icons.check,
                size: 20,
                color: Colors.grey.shade600,
              ),
              Text(
                ' Yes i will inform her',
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
          trailing: Text(
            'Yesterday',
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ),
      ],
    );
  }
}
