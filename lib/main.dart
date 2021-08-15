import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LockScreen(),
    );
  }
}

class LockScreen extends StatelessWidget {
  const LockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.grey.shade200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Center(
                      child: Icon(
                    Icons.lock_outline,
                    size: 100.0,
                    color: Colors.grey.shade600,
                  )),
                  Center(
                      child: Text(
                    'กรุณาใส่รหัสผ่าน',
                    style:
                        TextStyle(fontSize: 30.0, color: Colors.grey.shade600),
                  )),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildButton(1),
                      _buildButton(2),
                      _buildButton(3)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildButton(4),
                      _buildButton(5),
                      _buildButton(6)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildButton(7),
                      _buildButton(8),
                      _buildButton(9)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 75.0,
                        height: 75.0,
                      ),
                      _buildButton(0),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Container(
                            child: Icon(
                          Icons.backspace_outlined,
                          size: 30.0,
                          color: Colors.grey.shade600,
                        )),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'ลืมรหัสผ่าน',
                          style: TextStyle(fontSize: 20.0),
                        )),
                  )
                ],
              ),
            ],
          )),
    );
  }

  Widget _buildButton(int i) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 75.0,
            height: 75.0,
            //color: Colors.white, // ห้ามกำหนด color ตรงนี้ ถ้าหากกำหนดใน BoxDecoration แล้ว
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey.shade500, width: 4.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    // สีเงา
                    offset: Offset(2, 4),
                    // ทิศทางของเงาในแนวนอนและแนวตั้ง ตามลำดับ
                    blurRadius: 4.0,
                    spreadRadius: 2.0,
                  )
                ]),
          ),
        ),
        Text(
          '${i}',
          style: TextStyle(
              fontSize: 30.0,
              color: Colors.grey.shade700,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
