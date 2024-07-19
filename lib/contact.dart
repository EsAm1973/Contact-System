class Contact {
  String _name;
  String _phone;
  String _address;
  Contact(
    this._name,
    this._phone,
    this._address,
  );
  set name(String name) => _name = name;
  set phone(String phone) => _phone = phone;

  String get name => _name;
  String get phone => _phone;
  String get address => _address;

  displayContact() {
    print('============================');
    print('Name: $name');
    print('Phone: $phone');
    print('Address: $address');
    print('============================');
  }
}
