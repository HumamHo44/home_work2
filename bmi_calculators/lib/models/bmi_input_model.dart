class BmiInputModel {
  String gender;
  double height;
  int weight;
  int age;

  BmiInputModel({
    this.gender = 'Male',
    this.height = 174,
    this.weight = 70,
    this.age = 20,
  });

  @override
  String toString() {
    return "gender: $gender , height: $height , Weight: $weight , Age: $age";
  }
}
