class UserModal {
  late int id;
  late String name, username, email;
  late Address address;
  late Company company;

  UserModal(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.address,
      required this.company});

  factory UserModal.fromMap(Map m1) {
    return UserModal(
        id: m1['id'],
        name: m1['name'],
        username: m1['username'],
        email: m1['email'],
        address: Address.fromMap(m1['address']),
        company: Company.fromMap(m1['company']));
  }
}

class Address {
  late String street, suite, city, zipcode;
  late Geo geo;

  Address(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.geo});

  factory Address.fromMap(Map m1) {
    return Address(
        street: m1['street'],
        suite: m1['suite'],
        city: m1['city'],
        zipcode: m1['zipcode'],
        geo: Geo.fromMap(m1['geo']));
  }
}

class Geo {
  late String lat, lng;

  Geo({required this.lat, required this.lng});

  factory Geo.fromMap(Map m1) {
    return Geo(lat: m1['lat'], lng: m1['lng']);
  }
}

class Company {
  late String name, catchPhrase, bs;

  Company({required this.name, required this.catchPhrase, required this.bs});

  factory Company.fromMap(Map m1) {
    return Company(
        name: m1['name'], catchPhrase: m1['catchPhrase'], bs: m1['bs']);
  }
}
