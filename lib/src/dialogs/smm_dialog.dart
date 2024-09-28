abstract class SMMDialog<T extends Object?> {
  SMMDialog();

  Future<T?> get future;

  bool isShowing();

  void dismiss({T? result});
}
