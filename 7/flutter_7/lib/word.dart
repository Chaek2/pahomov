class Word {
  late String _name;
  late String _value;

  Word(String name, String value) {
    this._name = name;
    this._value = value;
  }

  void SetName(String name) {
    this._name = name;
  }

  String GetName() {
    return this._name;
  }

  void SetValue(String value) {
    this._name = value;
  }

  String GetValue() {
    return this._value;
  }

  Map toJson() => {
        'name': _name,
        'value': _value,
      };
}
