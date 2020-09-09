class Spacecraft {
  String name;
  DateTime launchDate;
  Spacecraft(this.name, this.launchDate) {}
  Spacecraft.unlaunched(String name) : this(name, null);
  int get launchYear => this.launchDate.year;
  void describe() {
    print('Spacecraft $name');
    if (launchDate != null) {
      int year = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($year year ago)');
    } else {
      print('unluanched');
    }
  }
}

class Piloted {
  int astronauts = 1;
  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

class Piloted2 {
  int astronauts2 = 2;
  void describeCrew() {
    print('Number of astronauts2: $astronauts2');
  }
}

class Orbiter extends Spacecraft with Piloted, Piloted2 {
  double altitude;
  Orbiter(String name, DateTime launchDate, double altitude)
      : this.altitude = altitude,
        super(name, launchDate) {
    print('Orbiter');
  }
  void describe() {
    print('Orbiter altitude: $altitude');
    super.describeCrew();
    super.describe();
  }
}

void main() {
  var voyager = Orbiter('Voyager I', DateTime(1977, 9, 5), 12.4);
  voyager.describe();
}
