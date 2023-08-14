import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text('WhatsApp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('chats'),
                ),
                Tab(
                  child: Text('status'),
                ),
                Tab(
                  child: Text('call'),
                ),
              ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(width:10),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => const [
                    PopupMenuItem(
                        value: '1',
                        child: Text('New group')
                    ),
                    PopupMenuItem(
                        value: '2',
                        child: Text('Settings')
                    ),
                    PopupMenuItem(
                        value: '3',
                        child: Text('Logout')
                    ),
                  ]
              ),
              SizedBox(width:10),
            ],
          ),
          body: TabBarView(
            children: [
              Text('camera'),
              ListView.builder(
                itemCount: 100,
                  itemBuilder: (context, index){
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.profilepersonnel.co.za%2Fwp-content%2Fuploads%2F2021%2F09%2Fprofile-personnel-welcome.png&tbnid=XLSJHzlqiuhnKM&vet=12ahUKEwj7vce078mAAxUWm2MGHXF3BjIQMygcegUIARCvAg..i&imgrefurl=https%3A%2F%2Fwww.profilepersonnel.co.za%2F&docid=hTGPI6WjhDgqiM&w=760&h=760&q=profile&ved=2ahUKEwj7vce078mAAxUWm2MGHXF3BjIQMygcegUIARCvAg'),
                      ),
                      title: Text('sunil kumar'),
                      subtitle: Text('where is my pic'),
                      trailing: Text('11:29 AM'),
                    );
                  }
              ),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index){

                    if(index ==0){
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('New updates'),
                            ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 3,
                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage('https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.profilepersonnel.co.za%2Fwp-content%2Fuploads%2F2021%2F09%2Fprofile-personnel-welcome.png&tbnid=XLSJHzlqiuhnKM&vet=12ahUKEwj7vce078mAAxUWm2MGHXF3BjIQMygcegUIARCvAg..i&imgrefurl=https%3A%2F%2Fwww.profilepersonnel.co.za%2F&docid=hTGPI6WjhDgqiM&w=760&h=760&q=profile&ved=2ahUKEwj7vce078mAAxUWm2MGHXF3BjIQMygcegUIARCvAg'),
                                ),
                              ),
                              title: Text('sunil kumar'),
                              subtitle: Text('26min ago'),
                            ),
                          ],
                        ),
                      );
                    }
                    else{
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 3,
                            ),
                          ),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.profilepersonnel.co.za%2Fwp-content%2Fuploads%2F2021%2F09%2Fprofile-personnel-welcome.png&tbnid=XLSJHzlqiuhnKM&vet=12ahUKEwj7vce078mAAxUWm2MGHXF3BjIQMygcegUIARCvAg..i&imgrefurl=https%3A%2F%2Fwww.profilepersonnel.co.za%2F&docid=hTGPI6WjhDgqiM&w=760&h=760&q=profile&ved=2ahUKEwj7vce078mAAxUWm2MGHXF3BjIQMygcegUIARCvAg'),
                          ),
                        ),
                        title: Text('sunil kumar'),
                        subtitle: Text('26min ago'),
                      );
                    }
                  }
              ),
              ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index){
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.profilepersonnel.co.za%2Fwp-content%2Fuploads%2F2021%2F09%2Fprofile-personnel-welcome.png&tbnid=XLSJHzlqiuhnKM&vet=12ahUKEwj7vce078mAAxUWm2MGHXF3BjIQMygcegUIARCvAg..i&imgrefurl=https%3A%2F%2Fwww.profilepersonnel.co.za%2F&docid=hTGPI6WjhDgqiM&w=760&h=760&q=profile&ved=2ahUKEwj7vce078mAAxUWm2MGHXF3BjIQMygcegUIARCvAg'),
                  ),
                  title: Text('sunil kumar'),
                  subtitle: Text(index /2 ==0 ? 'you missed call' : 'call time is 12:22'),
                  trailing: Icon(index /2 ==0 ? Icons.phone : Icons.video_call),
                );
              }
          ),
            ],
          ),
        )
    );
  }
}
