import 'dart:io';

/*
 это функция
 она состоит из частей:

 <тип возвращаемого значения> <имя функции> (<параметры>) {
  <тело функции>
 }
 */
bool compareStudios(Studio studioA, Studio studioB) {
  if (studioA.foundationYear < studioB.foundationYear) {
    print(studioA.name + " is cooler!");
  } else {
    print(studioB.name + " is cooler!");
  }
}

class Person {
  // свойства класса
  String name;
}


class Studio {
  // свойства класса
  String name;
  int foundationYear;
  Person director;

  // конструктор класса -- это функция внутри класса (метод), без указания возвращаемого типа
  Studio(String studioName, int year) {
    // тут мы свойству класса присваиваем значение параметра конструктора
    this.name = studioName;
    this.foundationYear = year;
  }

  // метод класса -- функция внутри класса, имеет доступ к свойствам класса
  // имеет доступ, значит можно обращаться к ним через this либо просто по имени
  // studio -- параметр метода
  bool amICooler(Studio studio) {
      // сравниваем значение свойства объекта ЭТОГО класса
      // со значением свойства параметра studio
      return this.foundationYear < studio.foundationYear;
  }

  // метод класса функция внутри класса, имеет доступ к свойствам класса
  // метод имеет один параметр с именем prefix
  void printTheName(String prefix) {
    // name -- свойство
    print(prefix + " " + this.name);
  }

  // метод класса функция внутри класса, имеет доступ к свойствам класса
  int getYear() {
    return this.foundationYear;
  }

  // метод класса функция внутри класса, имеет доступ к свойствам класса
  bool preWarStudio() {
    // из методов класса можно вызывать другие свои методы
    return this.getYear() < 1945;
  }

}

void main(List<String> args) {
  Studio s = Studio("A", 1);
  //s.name == "A"
  s.printTheName("---");
}