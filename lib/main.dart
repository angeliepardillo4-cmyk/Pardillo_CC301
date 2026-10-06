// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

//   class MyApp extends StatelessWidget {
//     const MyApp({super.key});

//     @override
//     Widget build(BuildContext context) {
//       return MaterialApp(
//         title: 'Pet Care Directory',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: const PetHomePage(),
//       );
//     }
//   }

//   class Pet {
//     final String name;
//     final String type;
//     final int age;
//     final String image;
//     final String careInfo;
//     bool isFavorite;

//     Pet({
//       required this.name,
//       required this.type,
//       required this.age,
//       required this.image,
//       required this.careInfo,
//       this.isFavorite = false,
//     });
//   }

//   class PetHomePage extends StatefulWidget {
//     const PetHomePage({super.key});

//     @override
//     State<PetHomePage> createState() => _PetHomePageState();
//   }

//   class _PetHomePageState extends State<PetHomePage> {
//     late List<Pet> pets;
//     int? selectedPetIndex;

//     @override
//     void initState() {
//       super.initState();
//       pets = [
//         Pet(name: 'Buddy', type: 'Dog', age: 3, image: 'assets/dw.jpeg', careInfo: 'Needs daily walks and exercise'),
//         Pet(name: 'Mittens', type: 'Cat', age: 2, image: 'assets/dw.jpeg', careInfo: 'Requires grooming and playtime'),
//         Pet(name: 'Charlie', type: 'Parrot', age: 5, image: 'assets/dw.jpeg', careInfo: 'Needs mental stimulation and varied diet'),
//         Pet(name: 'Whiskers', type: 'Rabbit', age: 1, image: 'assets/dw.jpeg', careInfo: 'Fresh vegetables and safe enclosure'),
//         Pet(name: 'Max', type: 'Hamster', age: 2, image: 'assets/dw.jpeg', careInfo: 'Clean cage and regular handling'),
//         Pet(name: 'Luna', type: 'Guinea Pig', age: 3, image: 'assets/dw.jpeg', careInfo: 'Spacious cage and social interaction'),
//       ];
//     }

//     @override
//     Widget build(BuildContext context) {
//       return Scaffold(
//         appBar: AppBar(title: const Text('Pet Care Directory')),
//         body: ListView(
//           children: [
//             PetHeader(),
//             ListView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: pets.length,
//               itemBuilder: (context, index) {
//                 return PetCard(
//                   pet: pets[index],
//                   isSelected: selectedPetIndex == index,
//                   onTap: () => setState(() => selectedPetIndex = index),
//                   onFavorite: () => setState(() => pets[index].isFavorite = !pets[index].isFavorite),
//                 );
//               },
//             ),
//           ],
//         ),
//       );
//     }
//   }

//   class PetHeader extends StatelessWidget {
//     @override
//     Widget build(BuildContext context) {
//       return Container(
//         padding: const EdgeInsets.all(24.0),
//         color: Colors.deepPurple.shade100,
//         child: Column(
//           children: [
//             const Text('Welcome to Pet Care', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 😎,
//             const Text('Discover pet care tips and information', style: TextStyle(fontSize: 14)),
//             const SizedBox(height: 16),
//             ElevatedButton.icon(icon: const Icon(Icons.info), label: const Text('View Care Tips'), onPressed: () {}),
//           ],
//         ),
//       );
//     }
//   }

//   class PetCard extends StatelessWidget {
//     final Pet pet;
//     final bool isSelected;
//     final VoidCallback onTap;
//     final VoidCallback onFavorite;

//     const PetCard({required this.pet, required this.isSelected, required this.onTap, required this.onFavorite});

//     @override
//     Widget build(BuildContext context) {
//       return GestureDetector(
//         onTap: onTap,
//         child: Card(
//           margin: const EdgeInsets.all(12),
//           color: isSelected ? Colors.deepPurple.shade50 : Colors.white,
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Row(
//               children: [
//                 Image.asset(pet.image, width: 100, height: 100, fit: BoxFit.cover),
//                 const SizedBox(width: 16),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(pet.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                       Text('${pet.type} • Age: ${pet.age}', style: const TextStyle(fontSize: 14, color: Colors.grey)),
//                       const SizedBox(height: 😎,
//                       CareInfo(careInfo: pet.careInfo),
//                     ],
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(pet.isFavorite ? Icons.favorite : Icons.favorite_border, color: Colors.red),
//                   onPressed: onFavorite,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     }
//   }

//   class CareInfo extends StatelessWidget {
//     final String careInfo;

//     const CareInfo({required this.careInfo});

//     @override
//     Widget build(BuildContext context) {
//       return Text(careInfo, style: const TextStyle(fontSize: 12, color: Colors.grey), maxLines: 2, overflow: TextOverflow.ellipsis);
//     }
//   }
//         extension PetListExtension on List<Pet> {
//           List<Pet> get favorites => where((pet) => pet.isFavorite).toList();
          
//           int get totalPets => length;
//         }

import 'package:flutter/material.dart';

class Fruit {
  String name;
  Fruit({required this.name});
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Fruit> fruits = [
    Fruit(name: 'Apple'),
    Fruit(name: 'Grape'),
    Fruit(name: 'Orange'),
    Fruit(name: 'Kiwi'),
    Fruit(name: 'Pineapple'),
    Fruit(name: 'Raspberry'),
    Fruit(name: 'Pardillo, A.'),
  ];

  void removeFruit(Fruit fruit) {
    setState(() {
      fruits.remove(fruit);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Fruit List'), centerTitle: true),

        body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            final fruit = fruits[index];

            return FruitCard(
              fruit: fruit,
              index: index,
              delete: () {
                removeFruit(fruit);
              },
            );
          },
        ),
      ),
    );
  }
}

class FruitCard extends StatelessWidget {
  final Fruit fruit;
  final int index;
  final Function delete;

  const FruitCard({
    super.key,
    required this.fruit,
    required this.index,
    required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Text('${index + 1}')),
        title: Text(fruit.name),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Color.fromARGB(255, 46, 87, 87),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${fruit.name} added to cart!')),
                );
              },
            ),
            TextButton.icon(
              onPressed: () {
                delete();
              },
              icon: const Icon(Icons.delete, color: Colors.red),
              label: const Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
