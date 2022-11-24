import 'package:counter_7/functions/fetch_mywatchlist.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/form.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class MyWatchList extends StatefulWidget {
  const MyWatchList({key});

  @override
  State<MyWatchList> createState() => _MyWatchListState();
}

class _MyWatchListState extends State<MyWatchList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: const Text('My Watch List'),
    ),
    drawer: Drawer(
        child: Column(
        children: [
            // Menambahkan clickable menu
            ListTile(
            title: const Text('Counter'),
            onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const CounterApplication()),
                );
            },
            ),
            ListTile(
            title: const Text('Form'),
            onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyBudgetFormPage()),
                );
            },
            ),
            ListTile(
            title: const Text('Data'),
            onTap: () {
                // Route menu ke halaman data
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyDataBudgetPage()),
                );
            },
            ),
            ListTile(
            title: const Text('My Watch List'),
            onTap: () {
                // Route menu ke halaman my watch list
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyWatchList()),
                );
            },
            )
        ],
        ),
    ),
    body: FutureBuilder(
        future: fetchMyWatchList(),
        builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
            } else {
            if (!snapshot.hasData) {
                return Column(
                children: const [
                    Text(
                    "Tidak ada watch list :(",
                    style: TextStyle(
                        color: Color(0xff59A5D8),
                        fontSize: 20),
                    ),
                    SizedBox(height: 8),
                ],
                );
            } else {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index)=> Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 2.0
                        )
                        ]
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                            "${snapshot.data![index].title}",
                            style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            ),
                        ),
                        const SizedBox(height: 10),
                        Text("${snapshot.data![index].completed}"),
                        ],
                    ),
                    )
                );
            }
            }
        }
    )
);
    }
}