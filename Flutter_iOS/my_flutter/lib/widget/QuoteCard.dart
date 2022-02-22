import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:my_flutter/model/Quote.dart';

class QuoteCard extends StatelessWidget {
  // const QuoteCard({Key? key}) : super(key: key);

  final Quote quote;
  final VoidCallback? delete;

  // const QuoteCard({Key? this.quote}) : super(key: key);
  // QuoteCard({this.quote = Quote(text: text, author: author)}); // 默认参数怎么写？
  QuoteCard({required this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            const Divider(
              height: 3,
              thickness: 0.5,
              color: Colors.brown,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[900],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextButton(
                onPressed: delete,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(
                      Icons.delete,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Delete',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
            // TextButton(onPressed: delete, icon: Icon(Icons.delete))
          ],
        ),
      ),
    );
  }
}
