import 'package:flutter/material.dart';
import 'package:villages/model/supermarket.dart';

import '../../components/supermarket_card.dart';

class SuperMarketPage extends StatelessWidget {
  const SuperMarketPage({
    Key? key,
    this.pageTitle = 'المحلات',
    this.supermarket = const [],
  }) : super(
          key: key,
        );
  final String? pageTitle;
  final List<SupermarketModel> supermarket;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle!),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: supermarket.length,
        itemBuilder: (ctx, i) {
          return SupermarketCard(
            markets: supermarket[i],
          );
        },
      ),
    );
  }
}
