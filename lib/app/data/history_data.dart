class HistoryData {
  String time;
  String calData;
  String result;
  int? id;

  HistoryData(
      {this.id,
      required this.time,
      required this.calData,
      required this.result});

  factory HistoryData.fromMap(Map<String, dynamic> map) {
    return HistoryData(
      id: map['id'],
      time: map['time'],
      calData: map['calData'],
      result: map['result'],
    );
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'time': time, 'calData': calData, 'result': result};
  }
}
