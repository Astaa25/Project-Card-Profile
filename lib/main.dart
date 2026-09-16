import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Mahasiswa',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ProfilMahasiswa(),
    );
  }
}

class ProfilMahasiswa extends StatelessWidget {
  const ProfilMahasiswa({super.key});

  // Fungsi untuk membuka link
  Future<void> bukaLink(String link) async {
    final Uri url = Uri.parse(link);

    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ==============================
      // APP BAR
      // ==============================
      appBar: AppBar(
        title: const Text(
          'Profil Mahasiswa',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFFFD54F),
        elevation: 8,
        shadowColor: Colors.black54,
      ),

      // ==============================
      // MAIN CONTENT
      // ==============================
      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFEB3B),
              Color(0xFFFFF59D),
              Color(0xFFFFFDE7),
              Colors.white,
            ],
          ),
        ),

        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),

            // ==============================
            // KARTU PROFIL
            // ==============================
            child: Container(
              width: 400,
              padding: const EdgeInsets.all(24),

              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.85),
                borderRadius: BorderRadius.circular(25),

                border: Border.all(
                  color: const Color(0xFFFFD54F),
                  width: 1.5,
                ),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.20),
                    blurRadius: 15,
                    spreadRadius: 2,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  // ==============================
                  // FOTO PROFIL
                  // ==============================
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      'assets/images/AbrarAstafaraiz.jpeg',
                    ),
                  ),

                  const SizedBox(height: 20),

                  // ==============================
                  // NAMA
                  // ==============================
                  const Text(
                    'Abrar Astafaraiz',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // ==============================
                  // NIM
                  // ==============================
                  const Text(
                    '2024573010088',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(height: 5),

                  // ==============================
                  // PRODI
                  // ==============================
                  const Text(
                    'Teknik Informatika',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(height: 25),

                  // ==============================
                  // INFORMASI AKADEMIK
                  // ==============================
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 8,
                    ),

                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF8E1),
                      borderRadius: BorderRadius.circular(18),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.10),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),

                    child: Row(
                      children: [

                        // ==============================
                        // SEMESTER
                        // ==============================
                        Expanded(
                          child: Column(
                            children: const [
                              Text(
                                '5',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFFA000),
                                ),
                              ),

                              SizedBox(height: 5),

                              Text(
                                'Semester',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // PEMBATAS
                        Container(
                          width: 1,
                          height: 50,
                          color: Color(0xFFFFD54F),
                        ),

                        // ==============================
                        // IPK
                        // ==============================
                        Expanded(
                          child: Column(
                            children: const [
                              Text(
                                '3,94',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFFA000),
                                ),
                              ),

                              SizedBox(height: 5),

                              Text(
                                'IPK',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // PEMBATAS
                        Container(
                          width: 1,
                          height: 50,
                          color: Color(0xFFFFD54F),
                        ),

                        // ==============================
                        // SKS
                        // ==============================
                        Expanded(
                          child: Column(
                            children: const [
                              Text(
                                '81',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFFA000),
                                ),
                              ),

                              SizedBox(height: 5),

                              Text(
                                'SKS',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  // ==============================
                  // SOSIAL MEDIA
                  // ==============================
                  const Text(
                    'Media Sosial',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // ==============================
                  // ROW SOSIAL MEDIA
                  // ==============================
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      // INSTAGRAM
                      IconButton(
                        tooltip: 'Instagram',
                        onPressed: () {
                          bukaLink(
                            'https://www.instagram.com/a.abrar_1/',
                          );
                        },
                        icon: const Icon(
                          Icons.camera_alt_outlined,
                        ),
                        iconSize: 30,
                        color: const Color(0xFFFFA000),
                      ),

                      const SizedBox(width: 20),

                      // GITHUB
                      IconButton(
                        tooltip: 'GitHub',
                        onPressed: () {
                          bukaLink(
                            'https://github.com/Astaa25/',
                          );
                        },
                        icon: const Icon(
                          Icons.code,
                        ),
                        iconSize: 30,
                        color: const Color(0xFFFFA000),
                      ),

                      const SizedBox(width: 20),

                      // EMAIL
                      IconButton(
                        tooltip: 'Email',
                        onPressed: () {
                          bukaLink(
                            'mailto:astaabrar@gmail.com',
                          );
                        },
                        icon: const Icon(
                          Icons.email_outlined,
                        ),
                        iconSize: 30,
                        color: const Color(0xFFFFA000),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}