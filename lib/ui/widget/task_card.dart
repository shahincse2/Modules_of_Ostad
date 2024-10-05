import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({
    super.key,
  });

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title of the Task',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const Text(
              'Description of the Task...',
            ),
            const Text(
              '04/10/2024',
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTaskStatusChip(),
                ButtonBar(
                  children: [
                    IconButton(
                      onPressed: _onTapEditButton,
                      icon: const Icon(Icons.edit),
                    ),
                    IconButton(
                      onPressed: _onTapDeleteButton,
                      icon: const Icon(Icons.delete),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _onTapEditButton() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Status'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: ['New', 'Completed', 'Cancelled', 'Progress'].map(
              (e) {
                return ListTile(
                  onTap: _onTapSetStatusButton,
                  title: Text(e),
                );
              },
            ).toList(),
          ),
          actions: [
            TextButton(
              onPressed: () {f
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Okay'),
            ),
          ],
        );
      },
    );
  }

  void _onTapSetStatusButton() {
    //TODO: You have to set status route....
  }

  void _onTapDeleteButton() {
    //TODO: You have to implement this delete route...
  }

  Widget _buildTaskStatusChip() {
    return Chip(
      label: const Text('New'),
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: AppColors.themeColor,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
