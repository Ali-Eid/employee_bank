import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fs_bank/core/db/customer_table/customer_table_model.dart';
import 'package:fs_bank/features/customer/domain/models/input_create_customer_model/input_create_customer_model.dart';

import '../../../../core/db/attribute_table/attribute_table.dart';
import '../../../../main.dart';

class HomeView2 extends StatefulWidget {
  const HomeView2({super.key});

  @override
  State<HomeView2> createState() => _HomeView2State();
}

class _HomeView2State extends State<HomeView2> {
  late Stream<List<AttributeTable>> streamUsers;
  @override
  void initState() {
    streamUsers = objectBox.getAttributeTable();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            print((await objectBox.attributeBox.getAllAsync()).map(
              (e) {
                return "${e.id} ";
              },
            ).toList());
          },
          child: const Icon(Icons.add),
        ),
        body: StreamBuilder<List<AttributeTable>>(
            stream: streamUsers,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                final users = snapshot.data!;

                return ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    final user = users[index];

                    return ListTile(
                      title: Text(user.name),
                      subtitle:
                          Text(user.attributeDataTable[4].label.toString()),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {},
                      ),
                      onTap: () {
                        // user.name = Faker().person.firstName();
                        // user.email = Faker().internet.email();

                        // objectBox.insertUser(user);
                      },
                    );
                  },
                );
              }
            }));
  }
}
