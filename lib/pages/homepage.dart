import 'package:flutter/material.dart';
import 'package:whatsclone/tabs/callstab.dart';
import 'package:whatsclone/tabs/chatstab.dart';
import 'package:whatsclone/tabs/communitytab.dart';
import 'package:whatsclone/tabs/updatestab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        //
        // appbar
        //

        appBar: AppBar(
          backgroundColor: const Color(0xff008069),
          toolbarHeight: 60,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
          bottom: const TabBar(
            isScrollable: true,
            labelColor: Colors.white,
            tabAlignment: TabAlignment.center,
            unselectedLabelColor: Colors.white60,
            indicatorColor: Colors.white,
            overlayColor: MaterialStatePropertyAll(Colors.white12),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            tabs: [
              Tab(
                icon: Icon(Icons.groups_rounded),
              ),
              Tab(
                text: 'Chats',
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Tab(
                  text: 'Updates',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Tab(
                  text: 'Calls',
                ),
              ),
            ],
          ),
        ),

        //
        // body
        //

        body: const Expanded(
          child: TabBarView(
            children: [
              CommunityTab(),
              ChatsTab(),
              UpdatesTab(),
              CallsTab(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff008069),
          onPressed: () {},
          child: const Icon(
            Icons.message,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
