import 'package:contact_system/contact.dart';

class ContactManager {
  final List<Contact> _contacts = [];

  void addContact(String name, String phone, String address) {
    _contacts.add(Contact(name, phone, address));
    print('============================');
    print('Contact $name added');
    print('============================');
  }

  void deleteContact(String name) {
    final contactIndex =
        _contacts.indexWhere((contact) => contact.name == name);
    if (contactIndex != -1) {
      _contacts.removeAt(contactIndex);
      print('============================');
      print('Contact deleted: $name');
      print('============================');
    } else {
      print('============================');
      print('Contact not found: $name');
      print('============================');
    }
  }

  void updateContact(String oldName, String newName, String newPhone) {
    for (var contact in _contacts) {
      if (contact.name == oldName) {
        contact.name = newName;
        contact.phone = newPhone;
        print('============================');
        print('Contact $oldName updated to $newName');
        print('============================');
        return;
      }
    }
    print('Contact $oldName not found');
  }

  void searchContact(String name) {
    for (var contact in _contacts) {
      if (contact.name == name) {
        print('============================');
        contact.displayContact();
        print('============================');
      }
    }
  }

  void displayAllContacts() {
    if (_contacts.isNotEmpty) {
      for (var contact in _contacts) {
        contact.displayContact();
      }
    } else {
      print('============================');
      print('Not found contacts');
      print('============================');
    }
  }
}
