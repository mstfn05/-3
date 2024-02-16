import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: MyAlertDialogDemo(),
      ),
    );
  }
}

class MyAlertDialogDemo extends StatefulWidget {
  @override
  _MyAlertDialogDemoState createState() => _MyAlertDialogDemoState();
}

class _MyAlertDialogDemoState extends State<MyAlertDialogDemo> {
  Future<void> _showAlertDialog(BuildContext context) async {
    final result = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Flutter duter"),
          content: Text("i love money"),
          actions: [
            ElevatedButton(
              child: Text("Yes"),
              onPressed: () {
                Navigator.of(context).pop("Me too"); 
              },
            ),
            ElevatedButton(
              child: Text("No"),
              onPressed: () {
                Navigator.of(context)
                    .pop("money money money must be funny"); 
              },
            ),
          ],
        );
      },
    );

    if (result != null) {
      print("User selected: $result");
    }
  }

  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("My App"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.directions_boat)),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              ElevatedButton(
                onPressed: () {
                  _showAlertDialog(context);
                },
                child: Text("Dialog"),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                
                height: 220, 
                padding: EdgeInsets.all(16.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.orange,
                  elevation: 10,
                  child: Padding(
                    padding:
                        const EdgeInsets.all(16.0), 
                    child: Column(
                      mainAxisSize: MainAxisSize
                          .min, 
                      children: <Widget>[
              
                        ListTile(
                          leading: Icon(Icons.album, size: 60),
                          title: Text(
                            "Sonu Nigam",
                            style:
                                TextStyle(fontSize: 24.0), 
                          ),
                          subtitle: Text(
                            "Best of Sonu Nigam Music",
                            style:
                                TextStyle(fontSize: 14.0), 
                          ),
                        ),
                        
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white, 
                                  onPrimary: Colors.black, 
                                ),
                                onPressed: () {
                                  setState(() {
                                    isPlaying = true;
                                  });
                                },
                                child: Text("Play"),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white, 
                                  onPrimary: Colors.black, 
                                ),
                                onPressed: () {
                                  setState(() {
                                    isPlaying = false;
                                  });
                                },
                                child: Text("Pause"),
                              ),
                            ],
                          ),
                        ),
                      ],
                      
                    
                    
                    
                    
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Мустафина"),
                accountEmail: Text("mustafa5122003@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "MT",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text('Map'),
                onTap: () {
                  
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_album),
                title: Text('Album'),
                onTap: () {
                 
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone'),
                onTap: () {
                  
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text('Contact'),
                onTap: () {
                 
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
                onTap: () {
                  
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ));
  }
}
