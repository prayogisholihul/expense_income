import 'package:expense_income/provider/activity_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActivityScreen extends ConsumerWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetch = ref.watch(fetchActivityProvider);

    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Activity',
        style: Theme.of(context).textTheme.titleLarge,
      )),
      body: fetch.when(
        data: (data) => ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) => Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                title: Text(
                  data[index].activity,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Divider()
            ],
          )
        ),
        error: (error, stackTrace) => const Center(child: Text('Too many Request')),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
