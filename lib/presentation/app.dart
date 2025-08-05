import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_app_task/domain/repository/item_repository.dart';

class App extends StatelessWidget {
  const App({required this.itemRepository, super.key});

  @protected
  final ItemRepository itemRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(value: itemRepository, child: const _AppView());
  }
}

class _AppView extends StatelessWidget {
  const _AppView();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Center(child: Text('Hello World!'))));
  }
}
