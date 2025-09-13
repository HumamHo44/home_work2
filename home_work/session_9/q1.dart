// Q1 Create a class City with attributes name and population.
//In main(), create two city objects and
// print their details.
void main() {
  City city1 = City('Syria', 1000);

  print('name:${city1.name} , population: ${city1.population} ');
  City city2 = City('Egypt', 1000);
  print('name:${city2.name} , population: ${city2.population} ');
}

class City {
  String name;
  int population;
  City(this.name, this.population);
}
