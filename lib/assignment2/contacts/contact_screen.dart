import 'package:flutter/material.dart';
import 'package:flutterassignments/assignment2/contacts/contact_model.dart';

class ContactScreen extends StatefulWidget {
  ContactScreen({Key? key}) : super(key: key);
  static String routeName = 'contacts Screen';

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  List<ContactModel> contacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Contacts Screen'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: TextField(
                        keyboardType: TextInputType.text,
                        controller: nameController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your name here',
                          suffixIcon: Icon(
                            Icons.edit,
                            color: Colors.blue,
                          ),
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: TextField(
                        keyboardType: TextInputType.number,
                        controller: phoneController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your Phone here',
                          suffixIcon: Icon(
                            Icons.phone,
                            color: Colors.blue,
                          ),
                        ))),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (contacts.length < 3) {
                          contacts.add(ContactModel(
                              nameController.text, phoneController.text));
                          setState(() {});
                        }
                      },
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ))),
                      child: const Text('Add'),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (contacts.isNotEmpty) {
                          contacts.removeAt(contacts.length - 1);
                          setState(() {});
                        }
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      child: const Text('Delete'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              if (contacts.isNotEmpty)
                Visibility(
                  visible: contacts.isNotEmpty ? true : false,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(contacts[0].name!),
                          Text(contacts[0].phone!),
                        ]),
                  ),
                ),
              const SizedBox(
                height: 20,
              ),
              if (contacts.length >= 2)
                Visibility(
                  visible: contacts.length >= 2 ? true : false,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(contacts[1].name!),
                          Text(contacts[1].phone!),
                        ]),
                  ),
                ),
              const SizedBox(
                height: 20,
              ),
              if (contacts.length == 3)
                Visibility(
                  visible: contacts.length == 3 ? true : false,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(contacts[2].name!),
                          Text(contacts[2].phone!),
                        ]),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
