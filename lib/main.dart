import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'CIS Student',
    theme: ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white), // สีฟ้อนต์ของ AppBar
      ),
      colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 0, 0)).copyWith(
        primaryContainer: Colors.grey[800], // เปลี่ยนสี primaryContainer เป็นสีที่ต้องการ
      ),
      useMaterial3: true,
    ),
    home: const MyHomePage(title: 'CIS Student'),
  );
}
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Student> data = [
    Student(name: "Onpreeya Jantakote (Me)", id: "653450107-5", image: "images/onpreeya.jpg", gender: "female"),
    Student(name: "Nunthiphat Butewang", id: "653450094-8", image: "images/Nunthiphat.jpg", gender: "male"),
    Student(name: "Thanapron Chanidkul", id: "653450092-2", image: "images/thanapron.jpg", gender: "male"),
    Student(name: "Natnicha Prompik", id: "653450284-3", image: "images/Natnicha.JPG", gender: "female"),
    Student(name: "Kitchawakon Chawalitkittiwong", id: "653450279-6", image: "images/Kitchawakon.png", gender: "male"),
    Student(name: "Thirawat Chottanakitpaisan", id: "653450090-6", image: "images/Thirawat.jpg", gender: "male"),
    Student(name: "Thepparit Intharapraphan", id: "653450091-4", image: "images/Thepparit.jpg", gender: "male"),
    Student(name: "Thaweesin Jaidee", id: "653450509-5", image: "images/Thaweesin.jpg", gender: "male"),
    Student(name: "Siriporn Kaewlinla" , id: "653450513-4", gender: "female"),
    Student(name: "Ramin Kaiyabut", id: "653450297-4", image: "images/Ramin.jpg", gender: "female"),
    Student(name: "Pathipat Mattra", id: "653450293-2", image: "images/Pathipat.jpg", gender: "male"),
    Student(name: "Natthakit Mitsungnoen", id: "653450283-5", gender: "male"),
    Student(name: "Aniwat Na nongkhai", id: "	653450106-7", image: "images/Aniwat.jpg", gender: "male"),
    Student(name: "Chawakorn Nueangpha", id: "653450087-5", image: "images/Chawakorn.jpg", gender: "male"),
    Student(name: "Natdanai Pakpoom", id: "653450088-3", gender: "male"),
    Student(name: "Phiriyakorn Phanphanich", id: "653450098-0", image: "images/Phiriyakorn.jpg", gender: "male"),
    Student(name: "Phiphitthon Phiphitkun", id: "653450097-2", gender: "male"),
    Student(name: "Chadaporn Pinichsai", id: "653450281-9", image: "images/Chadaporn.jpg", gender: "female"),
    Student(name: "Akkarawit Pobwongsa", id: "653450108-3", image: "images/Akkarawit.jpg", gender: "male"),
    Student(name: "Chacrit Poonpipit", id: "653450507-9", gender: "male"),
    Student(name: "Junthima Promwang", id: "653450280-1", image: "images/Junthima.jpg", gender: "female"),
    Student(name: "Haroon siddiq Qureshi", id: "653450300-1", image: "images/Haroon.jpg", gender: "male"),
    Student(name: "Thanaporn Rattanasiraprapha", id: "653450286-9", image: "images/Thanaporn.jpg", gender: "female"),
    Student(name: "Teera Riothawee", id: "653450288-5", image: "images/Teera.jpg", gender: "male"),
    Student(name: "Pitchakorn Sakulthai", id: "653450095-6", gender: "male"),
    Student(name: "Jaruvit Sangkaewsirikul", id: "653450086-7", gender: "male"),
    Student(name: "Phanuwat Sarawong", id: "653450295-8", image: "images/Phanuwat.jpg", gender: "male"),
    Student(name: "Thanakon Sawangsungnoen", id: "653450285-1", image: "images/Thanakon.JPG", gender: "male"),
    Student(name: "Sanruethai Saybut", id: "653450104-1", image: "images/Sanruethai.JPG", gender: "female"),
    Student(name: "Nanthawat Seahuam", id: "653450510-0", gender: "male"),
    Student(name: "Naphat Seehawong", id: "653450282-7", gender: "male"),
    Student(name: "Metagorn Singkhan", id: "653450100-9", gender: "male"),
    Student(name: "Nopphasin Sriburin", id: "653450290-8", image: "images/Nopphasin.jpg", gender: "male"),
    Student(name: "Natithorn Srimee", id: "653450292-4", image: "images/Natithorn.jpg", gender: "male"),
    Student(name: "Natthawan Puangmalai", id: "653450089-1", image: "images/Natthawan.JPG", gender: "female"),
    Student(name: "Prajak Sritong", id: "653450294-0", gender: "male"),
    Student(name: "Thanachok Suwan", id: "653450287-7", image: "images/Thanachok.png", gender: "male"),
    Student(name: "Naphat Suyoungkul", id: "653450282-7", gender: "male"),
    Student(name: "Panuwat Thammabut", id: "653450099-8", gender: "male"),
    Student(name: "Phichai Thongarsa", id: "653450096-4", image: "images/Phichai.jpg",gender: "male"),
    Student(name: "Worachit Thonglert", id: "653450298-2", image: "images/Worachit.jpg", gender: "male"),
    Student(name: "Worachot Thonglert", id: "653450299-0", image: "images/Worachot.jpg", gender: "male"),
  ];

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 237, 237),
      appBar: AppBar(
        title: const Text("My CIS"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        titleTextStyle: const TextStyle(
          fontSize: 24, 
          fontWeight: FontWeight.bold, 
          color: Color.fromARGB(255, 255, 238, 0), 
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (var item in data)
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StudentDetailPage(student: item),
                      ),
                    );
                  },
                  child: studentListItem(
                      name: item.name, 
                      id: item.id, 
                      image: item.image,
                      gender: item.gender),
                ),
            ],
          ),
        ),
      ),
    );
  }


Widget studentListItem({required name, required id, required image, required gender}) {
    final gradientColors = gender.toLowerCase() == 'male'
      ? [Colors.blue[300]!, Colors.blue[700]!]
      : [Colors.orange[700]!, Colors.orange[300]!];

    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                image,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
                Text(id, style: const TextStyle(fontSize: 14, color: Color.fromARGB(255, 255, 255, 255))),
              ],
            ),
          ],
        ),
      );
    }
}

class StudentDetailPage extends StatelessWidget {
  final Student student;

  const StudentDetailPage({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(student.name),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Card(
          color: Colors.white,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Hero(
                    tag: student.id,
                    child: ClipOval(
                      child: Image.asset(
                        student.image ?? "images/kku.png",
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    student.name,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Text(
                    "Student ID ${student.id}",
                    style: const TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 14),
                    decoration: BoxDecoration(
                      color: student.gender.toLowerCase() == 'male'
                          ? const Color.fromARGB(255, 27, 175, 255)
                          : const Color.fromARGB(255, 255, 0, 157),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      student.gender,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class Student {
  String name;
  String id;
  String? image; //nullable
  String gender;

  Student({
    required this.name,
    required this.id,
    required this.gender,
    this.image = "images/kku.png",
  });
}
