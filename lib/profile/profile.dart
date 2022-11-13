import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 115,
                width: 115,
                child: Stack(
                  fit: StackFit.expand,
                  children: const [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2isV6u5jhHdIGn87tmZhZSvWcsFqkVb4Q23PmQR_y&s'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'fasalulhaque',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontStyle: FontStyle.italic),
              ),
              const Text(
                'fasalulhaque@gmail.com',
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 18.6,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: ListTile(
                      tileColor: const Color.fromARGB(255, 170, 168, 168),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      leading: const Icon(Icons.person),
                      title: const Text(
                        'Privacy',
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: ListTile(
                          tileColor: const Color.fromARGB(255, 170, 168, 168),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          leading: const Icon(Icons.account_box),
                          title: const Text('Account'),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: ListTile(
                          tileColor: const Color.fromARGB(255, 170, 168, 168),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          leading: const Icon(Icons.notifications),
                          title: const Text('Notificaions'),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: ListTile(
                          tileColor: const Color.fromARGB(255, 170, 168, 168),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          leading: const Icon(Icons.settings),
                          title: const Text('Settings'),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: ListTile(
                          tileColor: const Color.fromARGB(255, 170, 168, 168),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          leading: const Icon(Icons.person_add),
                          title: const Text('Invite a Friend'),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: ListTile(
                          tileColor: const Color.fromARGB(255, 170, 168, 168),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          leading: const Icon(Icons.logout),
                          title: const Text('Logout'),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
