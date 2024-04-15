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
        leading: BackButton(color: Colors.white),
        title: const Text('History', style: TextStyle(color: Colors.white)),
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
              return Container(
                margin: const EdgeInsets.only(top: 12, left: 16, right: 16),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: bgColor, borderRadius: BorderRadius.circular(8)),
                child: ListTile(
                  title: Text(
                    item.calData,
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    item.result,
                    style: const TextStyle(color: Colors.white),
                  ),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                    onPressed: () => controller.removeFromHistory(item.id!),
                  ),
                ),
              );
            },
          );
        }
      }),
    );
  }
}
