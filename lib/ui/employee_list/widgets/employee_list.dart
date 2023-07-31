import 'package:flutter/material.dart';
import 'package:flweb/models/employee/employee.dart';
import 'package:flweb/ui/common_widgets/logout_icon_button.dart';
import 'package:go_router/go_router.dart';

class EmployeeList extends StatelessWidget {
  final List<Employee> employees;
  const EmployeeList({required this.employees, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final paddingWidth =
        ((size.width - 300) / 3 < 0 ? 0 : (size.width - 300) / 3).toDouble();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee List'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context.go('/employees/new');
            },
            icon: const Icon(Icons.add),
          ),
          const LogoutIconButton(),
        ],
      ),
      body: employees.isEmpty
          ? const Center(child: Text('No employees found'))
          : Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingWidth),
              child: ListView.builder(
                itemCount: employees.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(
                          '${index + 1} ${employees[index].name} ${employees[index].patronymic} ${employees[index].surname}'),
                      subtitle: Text(employees[index].phone),
                      onTap: () {
                        context.go('/employees/${employees[index].id}');
                      },
                    ),
                  );
                },
              ),
            ),
    );
  }
}
