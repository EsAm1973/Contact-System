import 'package:contact_system/contact_managet.dart';
import 'dart:io';

void main() {
  final ContactManager contactManger = ContactManager();

  while (true) {
    print('\nContact System:');
    print('1. Add Contact');
    print('2. Delete Contact');
    print('3. Update Contact');
    print('4. Search Contact');
    print('5. View All Contacts');
    print('6. Exit');

    print('Enter your choice (1-6)');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print('Enter name of contact:');
        String name = stdin.readLineSync()!;
        print('Enter phone of contact:');
        String phone = stdin.readLineSync()!;
        print('Enter address of contact:');
        String address = stdin.readLineSync()!;
        contactManger.addContact(name, phone, address);
        break;
      case 2:
        print('Enter name of contact to delete it:');
        String name = stdin.readLineSync()!;
        contactManger.deleteContact(name);
        break;
      case 3:
        print('Enter old name of contact:');
        String oldName = stdin.readLineSync()!;
        print('Enter new name of contact:');
        String newName = stdin.readLineSync()!;
        print('Enter new phone of contact:');
        String newPhone = stdin.readLineSync()!;
        contactManger.updateContact(oldName, newName, newPhone);
        break;
      case 4:
        print('Enter contact name to search in your contacts');
        String name = stdin.readLineSync()!;
        contactManger.searchContact(name);
        break;
      case 5:
        print('All Contacts:');
        contactManger.displayAllContacts();
        break;
      case 6:
        print('Existing...');
        exit(0);
      default:
        print('Invalid choice, try again');
    }
  }
}
