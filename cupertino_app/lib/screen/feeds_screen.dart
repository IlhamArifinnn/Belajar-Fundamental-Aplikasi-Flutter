import 'package:flutter/cupertino.dart';
import 'package:cupertino_app/static/my_route.dart';

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text("Feeds Screen")),
      child: Center(
        child: Column(
          children: [
            Text(
              "Feeds Screen",
              style: CupertinoTheme.of(
                context,
              ).textTheme.navLargeTitleTextStyle,
            ),
            const SizedBox.square(dimension: 8),
            CupertinoButton.filled(
              child: const Text("Select Category"),
              onPressed: () {
                _openDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _openDialog(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
          title: const Text('Select Categories'),
          actions: [
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  MyRoute.category.name,
                  arguments: 'Technology',
                );
              },
              child: const Text('Technology'),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  MyRoute.category.name,
                  arguments: 'Business',
                );
              },
              child: const Text('Business'),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  MyRoute.category.name,
                  arguments: 'Sport',
                );
              },
              child: const Text('Sport'),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            child: const Text('Close'),
            onPressed: () => Navigator.pop(context),
          ),
        );
      },
    );
  }
}
