import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:oneschool/lib/screens/developers.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Icon(
                  Icons.school_outlined,
                  size: 48,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 18),
                Text(
                  "Hey Teacher!",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.login_outlined,
                    size: 26,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  title: Text(
                    "Logout",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontSize: 18,
                        ),
                  ),
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                    Navigator.of(context).pushReplacementNamed('/login');
                  },
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              size: 26,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            title: Text(
              "About Developers",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 20,
                  ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DevelopersScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
