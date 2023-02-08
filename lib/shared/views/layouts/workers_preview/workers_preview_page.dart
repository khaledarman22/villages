import 'package:flutter/material.dart';

import 'package:villages/model/workers.dart';
import 'package:villages/shared/views/components/worker_card.dart';

class WorkersPreviewPage extends StatelessWidget {
  const WorkersPreviewPage({Key? key, this.pageTitle, this.workers = const []})
      : super(key: key);
  final String? pageTitle;
  final List<WorkerModel> workers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle!),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: workers.length,
        itemBuilder: (ctx, i) {
          return WorkerCard(
            worker: workers[i],
          );
        },
      ),
    );
  }
}
