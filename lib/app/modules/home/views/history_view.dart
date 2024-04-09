import 'package:flutter/material.dart';
import 'package:fluttercalculator/app/data/global_widget.dart';
import 'package:fluttercalculator/app/modules/home/controllers/history_controller.dart';
import 'package:get/get.dart';

class HistoryView extends StatelessWidget {
  final HistoryController controller = Get.put(HistoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        centerTitle: true,
        backgroundColor: bgColor,
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: controller.historyList.length,
            itemBuilder: (context, index) {
              final item = controller.historyList[index];
              return ListTile(
                title: Text(item.calData),
                subtitle: Text(item.result),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => controller.removeFromHistory(item.id!),
                ),
              );
            },
          );
        }
      }),
    );
  }
}
