import 'package:flutter_7/word.dart';
import 'dart:math';

class Globals {
  static List<Word> _words = [];

  void AddWord(Word word) {
    _words.add(word);
  }

  void AddRandomWord() {
    List<Word> newword = [
      Word("Кибернетика",
          "наука об оптимальном управлении сложными динамическими системами, изучающая общие принципы управления и связи, лежащие в основе работы самых разнообразных по природе систем — от самонаводящих ракет-снарядов и быстродействующих вычислительных машин до сложного живого организма."),
      Word("Сеть",
          "Сооружение, приспособление различного назначения из перекрещивающихся нитей, веревок, проволоки и т. п."),
      Word("Проглянуть", "Открыв глаза, посмотреть, взглянуть."),
      Word("Предрешить", "Заранее решить что-либо."),
      Word("Назавтра", "На следующий день."),
      Word("Сборник",
          "Книга, представляющая собой собрание каких-л. литературных или иных произведений, материалов, документов."),
      Word("Терпение",
          "Способность терпеть (в 1 знач.), стойко и безропотно переносить, сносить что-либо."),
      Word("Ожирение",
          "отложение жира, увеличение массы тела за счёт жировой ткани. Жировая ткань может откладываться как в местах физиологических отложений, так и в области молочных желёз, бёдер, живота."),
      Word("Рулон", "Круглый сверток (бумаги, обоев, материи и т. п.)."),
      Word("Защелка", "Запирающая часть в каком-либо механизме, устройстве."),
      Word("Сопереживать",
          "Переживать что-либо вместе с другим (другими), разделять чьи-либо переживания."),
      Word("Унестись", "Быстро двигаясь, перемещаясь, удалиться."),
      Word("Правота", "Правильность суждений, поступков, мыслей и т. п."),
    ];

    Set<int> setOfInts = Set();
    setOfInts.add(Random().nextInt(newword.length));
    setOfInts.add(Random().nextInt(newword.length));
    setOfInts.add(Random().nextInt(newword.length));
    setOfInts.add(Random().nextInt(newword.length));
    setOfInts.add(Random().nextInt(newword.length));

    for (int i = 0; i < setOfInts.length; i++) {
      _words.add(newword.elementAt(setOfInts.elementAt(i)));
    }
  }

  Word GetRandomWord() {
    return _words.elementAt(Random().nextInt(_words.length));
  }

  void DeleteWordAtId(int id) {
    _words.removeAt(id);
  }

  void DeleteWordAtName(String name) {
    _words.removeWhere((element) => element.GetName() == name);
  }

  void UpdateWord(int id, Word word) {
    _words.insert(id, word);
  }

  List<Word> GetWords() {
    return _words;
  }

  List<Word> GetWordOrder() {
    _words.sort((a, b) => a.GetName().compareTo(b.GetName()));
    return _words;
  }

  int GetLenghtWords() {
    return _words.length;
  }

  Word GetWordAtId(int id) {
    return _words.elementAt(id);
  }
}
