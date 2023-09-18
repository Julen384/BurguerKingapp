import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hola Julen,',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.brown[700],
                    ),
                  ),
                  Text(
                    'Eres el KING',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.brown[700],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Escanea tu BK ID en el restaurante y acumula coronas.',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.brown[700],
                      ),
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
                          color: Colors.brown[700],
                        ),
                      ),
                      Text(
                        '1.546',
                        style: TextStyle(
                          color: Colors.brown[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Conseguir más',
                        style: TextStyle(
                          color: Colors.brown[700],
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
                          color: Colors.brown[700],
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Ver Mis Ofertas',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown[700]),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: size.width,
              margin: const EdgeInsets.only(top: 25),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 243, 235, 222),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(Colors.brown.shade900),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'HACER PEDIDO',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 169, 23, 42)),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'REPETIR PEDIDO',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(255, 236, 204, 186),
                    ),
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.info,
                          color: Colors.brown[900],
                          size: 18,
                        ),
                        const Spacer(),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Estamos trabajando para mejorar el club de\nFidelización My Burger King 😀'),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                'Más información',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 214, 33, 0),
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color.fromARGB(255, 214, 33, 0),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "FlameBold"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Image(image: AssetImage('assets/images/Captura de pantalla 2023-08-29 a las 10.44.38.png')),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Text(
                        'CUPONES',
                        style: TextStyle(
                          color: Color.fromARGB(255, 81, 35, 20),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: "FlameBold",
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Ver todos',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: const Image(
                            height: 200,
                            image: AssetImage('assets/images/Captura de pantalla 2023-08-30 a las 13.48.09.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: Colors.red,
                          ),
                          child:
                              const Image(height: 200, fit: BoxFit.fill, image: AssetImage('assets/images/Captura de pantalla 2023-08-31 a las 10.21.34.png')),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: Colors.red,
                          ),
                          child:
                              const Image(height: 200, fit: BoxFit.fill, image: AssetImage('assets/images/Captura de pantalla 2023-08-31 a las 10.22.01.png')),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: Colors.red,
                          ),
                          child:
                              const Image(height: 200, fit: BoxFit.fill, image: AssetImage('assets/images/Captura de pantalla 2023-08-31 a las 10.24.15.png')),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: Colors.red,
                          ),
                          child: const Image(
                            height: 200,
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/Captura de pantalla 2023-08-31 a las 10.24.45.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Text('TU BK MÁS CERCANO'),
                      Spacer(),
                      Text(
                        'Ver todos',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 0,
                    margin: const EdgeInsets.symmetric(horizontal: 0),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Image(image: AssetImage('assets/images/Captura de pantalla 2023-08-31 a las 13.04.34.png')),
                            const Padding(
                              padding: EdgeInsets.only(left: 15, top: 10),
                              child: Text(
                                'ELCHE, ALICANTE',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 212, 10, 0),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                'AV.ALCALDE VICENTE QUILES, 8',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 212, 10, 0),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                'a 0.7 km',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 212, 10, 0),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Cerrado',
                                    style: TextStyle(
                                      fontFamily: '',
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 212, 10, 0),
                                    ),
                                  ),
                                ),
                                const Icon(Icons.keyboard_arrow_down_rounded, color: Color.fromARGB(255, 212, 10, 0)),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.all(20),
                              child: Row(
                                children: [
                                  Icon(Icons.attractions_rounded, color: Color.fromARGB(255, 112, 62, 51)),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Icon(Icons.sports_bar_rounded, color: Color.fromARGB(255, 112, 62, 51)),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Icon(Icons.deck_rounded, color: Color.fromARGB(255, 112, 62, 51)),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Icon(Icons.delivery_dining_rounded, color: Color.fromARGB(255, 112, 62, 51)),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Icon(Icons.desktop_mac_rounded, color: Color.fromARGB(255, 112, 62, 51)),
                                  SizedBox(
                                    width: 18,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          right: 5,
                          top: 68,
                          child: IconButton(
                            padding: EdgeInsets.all(15),
                            iconSize: 25,
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.brown[800]),
                            ),
                            onPressed: () {},
                            icon: const Icon(Icons.near_me_outlined, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Image(
              image: AssetImage('assets/images/IMG_8555.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
