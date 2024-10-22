import 'package:flutter/material.dart';
import 'basic_widgets/scaffold_widget.dart';
import 'basic_widgets/alert_dialog_widget.dart';
import 'basic_widgets/text_field_widget.dart';
import 'basic_widgets/date_picker_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Example',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const HomeWidget(),
      routes: {
        '/scaffold': (context) => const ScaffoldWidget(),
        '/alertDialog': (context) => const AlertDialogWidget(),
        '/textField': (context) => const TextFieldWidget(),
        '/datePicker': (context) => const DatePickerWidget(),
      },
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Widgets Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/scaffold');
              },
              child: const Text('Scaffold Widget'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/alertDialog');
              },
              child: const Text('Alert Dialog Widget'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/textField');
              },
              child: const Text('Text Field Widget'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/datePicker');
              },
              child: const Text('Date Picker Widget'),
            ),
          ],
        ),
      ),
    );
  }
}
