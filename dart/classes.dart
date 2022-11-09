import 'dart:io';

bool compareStudios(Studio studioA, Studio studioB) {
  if (studioA.foundationYear < studioB.foundationYear) {
    print(studioA.name + " is cooler!");
  } else {
    print(studioB.name + " is cooler!");
  }
  /*
    Studio coolestStudio = studioA.foundationYear < studioB.foundationYear ? studioA : studioB;
    print(coolestStudio.name + " is cooler!");
  */
}

class Person {
  String name;
}

class Studio {

  String name;
  int foundationYear;
  Person director;

  Studio(String studioName, int year) {
    this.name = studioName;
    this.foundationYear = year;
  }

  bool amICooler(Studio studio) {
      return this.foundationYear < studio.foundationYear;
  }

  void printTheName(String prefix) {
    print(prefix + " " + this.name);
  }

  int getYear() {
    return this.foundationYear;
  }

  bool preWarStudio() {
    return this.getYear() < 1945;
  }

}

void main(List<String> args) {

}