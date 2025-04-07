import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: Text('Hello world'),
      action: SnackBarAction(label: 'ok', onPressed: () {}),
      duration: Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (context) => AlertDialog(
            title: Text('Are you sure?'),
            content: Text(
              'Esse minim deserunt occaecat quis enim pariatur nulla sint ut ullamco do nostrud in voluptate. Anim et sunt magna nostrud ea. Elit anim nisi ullamco labore aute elit aliquip commodo labore consequat labore id do consequat. Ullamco reprehenderit excepteur ea qui officia. Consectetur pariatur in voluptate nulla cillum elit incididunt tempor est. Nisi exercitation quis do ad excepteur proident nisi aliqua minim. Proident commodo aute ullamco consequat in.',
            ),
            actions: [
              TextButton(onPressed: () => context.pop(), child: Text('Cancel')),
              FilledButton(onPressed: () => context.pop(), child: Text('Accept')),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbars and Dialogs')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    Text(
                      'Quis voluptate Lorem aute consectetur incididunt est velit labore adipisicing incididunt occaecat tempor dolore. Dolore duis cillum incididunt adipisicing cillum excepteur officia magna consequat exercitation sunt. Anim laboris quis reprehenderit tempor non. Nostrud duis irure do do. Laborum culpa ex quis aute aliqua esse.',
                    ),
                  ],
                );
              },
              child: Text('Used Licenses'),
            ),
            FilledButton.tonal(onPressed: () => openDialog(context), child: Text('Show Dialog')),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: Text('Show Snackbars'),
        icon: Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
