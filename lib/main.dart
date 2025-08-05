// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text('Hello World!'),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/widgets.dart';
import 'package:mini_app_task/bootstrap.dart';
import 'package:mini_app_task/data/data_source/local/item_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final itemApi = ItemStorageNoteApi(plugin: await SharedPreferences.getInstance());
  bootstrap(itemApi: itemApi);
}
