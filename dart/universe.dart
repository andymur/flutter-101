

class Star {
  final String name;
  final int mass;

  Star.name(this.name, this.mass);

  Star(this.name, this.mass);
}

class Planet {
  final String name;
  final int mass;
  final Star star;

  Planet({this.name, this.mass, this.star});

}

class Widget {

  final int width;
  final int height;
  final String name;

  Widget(this.width, this.height, this.name);

  void say() {
    print("I'm $name");
  }
}

class TextWidget extends Widget {

  final String text;

  TextWidget(int width, int height, String name, this.text) : super(width, height, name);

  void printText() {
    print("This is my text $text");
  }
}

class Race {
  String name;

  Race(this.name);
}

class Class {
  String name;

  Class(this.name);
}

class HalfBlut extends Race {
  Race secondRace;

  HalfBlut(Race first_race, this.secondRace) : super(first_race.name);
}

class Player {
  Race race;
  Class klass;

  String name;

  Player(this.race, this.klass, this.name);

  void turn() {
    print("My turn!!!");
    if (klass.name == "wizzard") {
      print("I'm lucky!");
    } else {
      print(":-(");
    }
  }
}

void main(List<String> args) {
  
  Class wizzard = Class("wizzard");

  Class warrior = Class("warrior");

  Race elf = Race("elf");
  Race orc = Race("orc");
  
  Race elfOrc = HalfBlut(elf, orc);
  
  Player v = Player(elfOrc, warrior, "V");
  v.turn();

  Star sirius = Star.name("Sirius", 200);

  Star sun = Star("Sun", 100);
  Planet earth = Planet(mass: 5, star: sun, name: "Earth");
  Planet mars = Planet(mass: 10, name: "Venus", star: sirius);

  Widget w = Widget(100, 200, "Text");

  TextWidget vasya = TextWidget(300, 400, "Vasya", "TXT!!!!");

  w.say();
  vasya.say();
  vasya.printText();

  print(earth);
}