import 'package:flutter/material.dart';

import '../../../../themes.dart';

class PendingView extends StatelessWidget {
  const PendingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blackColor,
        title: Text("Pending"),
      ),
      body: Center(
        child: ListView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              child: ListTile(
                onTap: () {},
                title: Text(
                  "friends",
                  style: semiBoldText15,
                ),
                subtitle: Text(
                  "9 November 2001",
                  style: regulerText12,
                ),
                leading: CircleAvatar(radius: 30),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.check, color: Colors.green),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.close, color: Colors.red),
                      onPressed: () {
                        // Fungsionalitas ketika tombol silang ditekan
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
