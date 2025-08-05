import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_app_task/core/widgets/app_empty.dart';
import 'package:mini_app_task/core/widgets/app_error.dart';
import 'package:mini_app_task/core/widgets/app_text.dart';
import 'package:mini_app_task/domain/repository/item_repository.dart';
import 'package:mini_app_task/presentation/bloc/items/items_bloc.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (BuildContext context) =>
              ItemsBloc(itemRepository: context.read<ItemRepository>())
                ..add(const ItemsEvent.getItems()),
      child: const _ItemList(),
    );
  }
}

class _ItemList extends StatelessWidget {
  const _ItemList();

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: AppText.title1(text: 'My Items')),
      body: BlocBuilder<ItemsBloc, ItemsState>(
        builder: (context, state) {
          switch (state.status) {
            case ItemsStatus.loading:
              return const Center(child: CupertinoActivityIndicator(radius: 20));
            case ItemsStatus.failure:
              return AppError(error: state.error ?? 'Failed request');
            case ItemsStatus.success:
              if (state.items.isEmpty) return const AppEmpty();
              return Text('Success');
          }
        },
      ),
    );
  }
}
