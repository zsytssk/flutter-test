abstract class Animal {
  String name;
  Animal(this.name);
}

class Cat extends Animal {
  String breed;

  Cat(int i)
      : breed = breedFromCode(i),
        super(randomName());

  static String breedFromCode(int i) {
    // ...
  }

  static String randomName() {
    // ...
  }
}
