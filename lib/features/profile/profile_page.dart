import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/theme_controller.dart';

class ProfilePage extends StatelessWidget {
   ProfilePage({super.key});

  final ThemeController themeController  = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[300]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Mosi Git",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("Author")
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const ListTile(
                contentPadding: EdgeInsets.all(1),
                leading: Icon(Icons.call_outlined),
                title: Text("+8825532836"),
              ),
              const ListTile(
                contentPadding: EdgeInsets.all(1),
                leading: Icon(Icons.mail_outline),
                title: Text("mosi@gmail.com"),
              ),
              Obx(()=> SwitchListTile(
                contentPadding: EdgeInsets.all(0),
                value: themeController.isDarkMode.value, 
                title: Text(themeController.isDarkMode.value ? "Light Mode" : "Dark Mode"),
                onChanged: themeController.toggleTheme
                )),
              const SizedBox(
                height: 30,
              ),
              customContainerTile(context, "Personal Details", () {}),
              customContainerTile(context, "My Books", () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget customContainerTile(
      BuildContext context, String name, Function() function) {
    return GestureDetector(
      onTap: function,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        margin: const EdgeInsets.only(bottom: 8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Theme.of(context).primaryColor
             //color: Colors.grey[300],
             ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
