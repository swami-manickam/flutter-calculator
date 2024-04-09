import 'package:fluttercalculator/app/data/history_data.dart';
import 'package:fluttercalculator/app/utils/db_helper.dart';
import 'package:get/get.dart';

class HistoryController extends GetxController {
  final dbHelper = DBHelper();
  final historyList = <HistoryData>[].obs;
  final isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    isLoading.value = true;
    historyList.assignAll(await dbHelper.readData());
    isLoading.value = false;
  }

  void addToHistory(String calData, String result) async {
    final id = DateTime.now().millisecondsSinceEpoch.toString();
    await dbHelper.insertData(
        HistoryData(id: 0, time: id, calData: calData, result: result));
    fetchData(); // Refresh the list after adding data
  }

  void removeFromHistory(int id) async {
    await dbHelper.deleteData(id);
    fetchData(); // Refresh the list after deleting data
  }
}
