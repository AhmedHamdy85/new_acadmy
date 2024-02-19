import 'package:flutter/material.dart';
import 'package:new_acadmy/generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).Home,
        ),
      ),
      body: Column(
        children: [
          // TabBar(
          //   controller:controller ,
          //   tabs: [
          //     Tab(
          //       text: S.of(context).Home,
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}
