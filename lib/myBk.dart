import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyBKPage extends StatefulWidget {
  const MyBKPage({super.key});

  @override
  State<MyBKPage> createState() => _MyBKPageState();
}

class _MyBKPageState extends State<MyBKPage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: size.width,
        color: Colors.orange,
        child: Column(
          children: [
            const SizedBox(height: 60),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orangeAccent,
              ),
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              width: size.width,
              child: Row(
                children: [
                  Text(
                    'Eres KING',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.brown[900],
                    ),
                  ),
                  const Spacer(),
                  RichText(
                    text: TextSpan(
                      text: 'Consigue ',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.brown[900],
                      ),
                      children: [
                        TextSpan(
                          text: '15.000 coronas',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.brown[900],
                          ),
                        ),
                        TextSpan(
                          text: '\ncon tu compras para ser\nSUPER KING',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.brown[900],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20, left: 20),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Coronas disponibles',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.brown[900],
                        ),
                      ),
                      Text(
                        '3.046',
                        style: TextStyle(
                          color: Colors.brown[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Conseguir más',
                        style: TextStyle(
                          color: Colors.brown[900],
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Text(
                        'No hay ofertas activas',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.brown[900],
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Ver Mis Ofertas',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown[900]),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 25),
              child: Row(
                children: [
                  Column(
                    children: [
                      IconButton.outlined(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.qr_code,
                          color: Color.fromARGB(255, 212, 10, 0),
                          size: 32,
                        ),
                        padding: const EdgeInsets.all(10),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                      const Text(
                        'Ver mi\ncódigo',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      IconButton.outlined(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_events,
                          color: Color.fromARGB(255, 212, 10, 0),
                          size: 32,
                        ),
                        padding: const EdgeInsets.all(10),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                      const Text(
                        'Descubre\nMY BK',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      IconButton.outlined(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 212, 10, 0),
                          size: 32,
                        ),
                        padding: const EdgeInsets.all(10),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                      const Text(
                        'Historial de\ncoronas',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      IconButton.outlined(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.help_outline_outlined,
                          color: Color.fromARGB(255, 212, 10, 0),
                          size: 32,
                        ),
                        padding: const EdgeInsets.all(10),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                      const Text(
                        'Preguntas\nFrecuentes',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: size.width,
              height: size.height,
              margin: const EdgeInsets.only(top: 25),
              //padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 243, 235, 222),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  TabBar.secondary(
                    controller: _tabController,
                    labelPadding: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    tabs: const <Widget>[
                      Tab(text: 'OFERTAS'),
                      Tab(text: 'CUPONES'),
                      Tab(text: 'EXPERIENCIAS'),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.help_outline_outlined,
                                size: 18,
                                color: Colors.red[700],
                              ),
                              TextButton(
                                child: Text('¿Cómo funcionan?', style: TextStyle(color: Colors.red[700])),
                                onPressed: () {
                                  _abrirurl('https://no-funciona.com');
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'CUPONES DISPONIBLES EN',
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 18,
                                    color: Colors.red[700],
                                  ),
                                  Text(
                                    'Tu localización actual',
                                    style: TextStyle(color: Colors.brown[900]),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Wrap(
                                alignment: WrapAlignment.center,
                                spacing: 10,
                                runSpacing: 10,
                                children: [
                                  for (int i = 0; i <= 5; i++)
                                    const Image(
                                        height: 200, fit: BoxFit.fill, image: AssetImage('assets/images/Captura de pantalla 2023-08-31 a las 10.22.01.png')),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _abrirurl('https://www.fanaticosdeloreal.com');
                                },
                                child: const Image(
                                  image: AssetImage('assets/images/Captura de pantalla 2023-09-11 a las 16.42.20.png'),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _abrirurl('https://www.hotelopia.com/es/es-es/');
                                },
                                child: const Image(
                                  image: AssetImage('assets/images/Captura de pantalla 2023-09-11 a las 16.42.03.png'),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _abrirurl(
                                      'https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwiekOuWzqSBAxXgimgJHSrfAuQYABAAGgJ3Zg&ae=2&gclid=Cj0KCQjwmICoBhDxARIsABXkXlJnoD2ZVnTCUYzhJ6N_aMgiT9hvfK0XbCyudjEr-rVoF5u3VXZ0AY0aAjwQEALw_wcB&ohost=www.google.com&cid=CAESbeD2OX8_79QuEkVh5PUYIm0BPaEdHqD92_jlDY83aYSSBFNzlFkCHpqE0AXq4XNvlFBBofRbTlg9jz0vvJ7OyWTY6YH17E7BaLNQU_qXnJZRvKRD_W-eikai-Ba_KUmjknV3OwBMYCkHHNfPicY&sig=AOD64_0VZ0i42J5rAciPg9Rm0HOwmB1toA&q&adurl&ved=2ahUKEwi_juSWzqSBAxU5T6QEHZ2RBaAQ0Qx6BAgGEAM&nis=2&dct=1');
                                },
                                child: const Image(
                                  image: AssetImage('assets/images/Captura de pantalla 2023-09-11 a las 16.41.37.png'),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _abrirurl('https://www.laliga.com');
                                },
                                child: const Image(
                                  image: AssetImage('assets/images/Captura de pantalla 2023-09-11 a las 16.41.28.png'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _abrirurl(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }
}
