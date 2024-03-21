import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }

  
}

class MainPageState extends State<MainPage> {

  double _sonuc = 0;
  TextEditingController _boyController = TextEditingController();
  TextEditingController _kiloController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kütle Endeksi"),
        backgroundColor: Color.fromARGB(255, 212, 0, 255),
      ),

      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          
          Text(_sonuc.toStringAsFixed(2),
            style: TextStyle(
              fontSize: 32,
            )
          ),

          SizedBox(height: 30),

          TextField(
            controller: _boyController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text("Boyunuz"),
              suffixText: "m",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              )
            ),
          ),

          SizedBox(height: 30),

          TextField(
            controller: _kiloController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text("Kilonuz"),
              suffixText: "kg",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              )
            ),
          ),

          SizedBox(height: 30),

          ElevatedButton(
            child: Text("Hesapla"),
            onPressed: _hesapla
           ),
        
        ],),
      ),
    );
  }

void _hesapla(){

  //trim kullanıcının sağa sola koyduğu boşlukları silerki çevrimlerde sorun çıkmasın
  String boyText = _boyController.text.toString().trim();
  String kiloText = _kiloController.text.toString().trim();

  try{
    double boy = double.parse(boyText);
    double kilo = double.parse(kiloText);

    setState(() {
          _sonuc = kilo / (boy * boy);
    });
  }catch(e){
    print("Bir hata oluştu : ${e.toString()}");
  }

}

}