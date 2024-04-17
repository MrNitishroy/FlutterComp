import 'package:get/get.dart';

class AppBarController extends GetxController {
  late String simpleAppBar = '''Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_rounded,
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
          ),
        ],
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.format_align_left_sharp,
              color: Theme.of(context).colorScheme.primaryContainer,
            )),
        backgroundColor: blueColor,
        title: Text(
          "A P P B A R",
          style: TextStyle(
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
        ),
      ),
      body: Center(
        child: Text("App bar"),
      ),
    );''';

  late String tabAppBar = '''class TabAppBar extends StatefulWidget {
  const TabAppBar({super.key});

  @override
  State<TabAppBar> createState() => _TabAppBarState();
}

class _TabAppBarState extends State<TabAppBar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          title: Text("TAB APP BAR"),
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Theme.of(context).colorScheme.primaryContainer,
            dividerColor: Theme.of(context).colorScheme.background,
            controller: tabController,
            tabs: const [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "About",
              ),
              Tab(
                icon: Icon(Icons.email),
                text: "Contact",
              ),
              Tab(
                icon: Icon(Icons.more),
                text: "More",
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            DemoHomePage(),
            DemoAboutPage(),
            DemoContactPage(),
            DemoHomePage(),
          ],
        ));
  }
}''';

  late String whatsappAppbar = '''
class WhatsappAppBar extends StatefulWidget {
  const WhatsappAppBar({super.key});

  @override
  State<WhatsappAppBar> createState() => _WhatsappAppBarState();
}

class _WhatsappAppBarState extends State<WhatsappAppBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title:const Text(
          "WhatsApp",
          style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
        ),
        centerTitle: false,
        bottom: TabBar(
            labelColor: Theme.of(context).colorScheme.onSecondaryContainer,
            indicatorWeight: 2,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Theme.of(context).colorScheme.primaryContainer,
            unselectedLabelColor: Theme.of(context).colorScheme.onSecondaryContainer,
            controller: tabController,
            tabs:const [
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
            ]),
      ),
      body: TabBarView(controller: tabController, children: [
        ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text("Flutter hero"),
              subtitle: Text(
                "I want to talk with you",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            );
          },
        ),
        ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.play_arrow),
              ),
              title: Text("Flutter hero"),
              subtitle: Text(
                "29 minutes ago",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            );
          },
        ),
        ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text("Flutter hero"),
              subtitle: Text(
                "29 minutes ago",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              trailing: Icon(Icons.call),
            );
          },
        )
      ]),
    );
  }
}
''';
}
