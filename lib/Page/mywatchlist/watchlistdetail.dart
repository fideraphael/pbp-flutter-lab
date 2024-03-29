import 'package:flutterassignment/Page/mywatchlist/watchlistmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutterassignment/Page/drawer.dart';
import 'package:intl/intl.dart';

class MyWatchlistDetailPage extends StatelessWidget {
  final MyWatchlist movie;

  const MyWatchlistDetailPage({Key? key, required this.movie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat('MMM dd, yyyy');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      drawer: const DrawerApp(),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Column(
                    children: [
                      Text(
                        movie.fields.title,
                        style: const TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      ListTile(
                        leading: const Text(
                          'Release Date: ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold
                          ),
                        ),
                        trailing: Text(
                          formatter.format(movie.fields.releaseDate).toString(),
                          style: const TextStyle(
                              fontSize: 15
                          ),
                        ),
                        dense: true,
                      ),
                      ListTile(
                        leading: const Text(
                          'Rating: ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold
                          ),
                        ),
                        trailing: Text(
                          '${movie.fields.rating} / 10',
                          style: const TextStyle(
                              fontSize: 15)
                          ,
                        ),
                        dense: true,
                      ),
                      ListTile(
                        leading: const Text(
                          'Status: ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold
                          ),
                        ),
                        trailing: Text(
                          movie.fields.watched == "Yes" ? "Watched" : "Not Watched",
                          style: const TextStyle(
                              fontSize: 15
                          ),
                        ),
                        dense: true,
                      ),
                      ListTile(
                          title: const Padding(
                            padding: EdgeInsets.only(
                                bottom: 10.0
                            ),
                            child: Text(
                              'Review: ',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          dense: true,
                          subtitle: Text(
                            movie.fields.review,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black
                            ),
                          ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        padding: const EdgeInsets.all(15.0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.center),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Return",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}