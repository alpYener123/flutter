import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:platform_device_id_v3/platform_device_id.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:untitled/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io' show Platform;

import 'package:pedometer/pedometer.dart';
import 'package:permission_handler/permission_handler.dart' as perm;

late String startTime;

int whenToStop = 604800000; // 1 week
int locInterval = 300000; // 300000 --> 5 mins

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<dynamic> getAttributeValue(String collection, String attribute, String? value) async {
    // Query the collection to find documents where the attribute matches the value
    QuerySnapshot querySnapshot = await _firestore
        .collection(collection)
        .where(attribute, isEqualTo: value)
        .get();

    // Check if any documents were found
    if (querySnapshot.docs.isNotEmpty) {
      // Return the value of the found attribute
      Map<String, dynamic> data = querySnapshot.docs.first.data() as Map<String, dynamic>;

      // Check if 'time' field exists and return its value
      if (data.containsKey('time')) {
        return data['time'];
      }
      else{
        return "NA";
      }
    }

    // Return "NA" if no documents were found
    return "NA";
  }
}


// Main function, also initializing Firebase
Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

// MyApp is a subclass of StatelessWidget. It does not maintain a state.
class MyApp extends StatelessWidget{
  const MyApp({super.key}); // Calls the superclass constructor

  @override // Override a method in the superclass
  Widget build(BuildContext context){ // build method describes how to display the widget in the UI. It returns a widget. build is called automatically.
    // BuildContext provides info about the location of a widget in the widget tree
    // context is passed automatically by Flutter
    return MaterialApp( // The widget that build returns.
      home: const Home(),
      routes: <String, WidgetBuilder>{
        '/InfoPage' : (context) => const InfoPage(),
        '/LocationPage' : (context) => const LocationPage(),
        '/HealthInfoPage' : (context) => const HealthInfoPage()
      },
    );
  }
}



///////////////////////////// HOME PAGE ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold provides basic visual structure (app bar, body etc.)
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color(0xFFFF0000),
                      Color(0xFF00008B)
                    ]
                )
            ),
            child: Column(
                children: <Widget>[
                  Container(
                      height: MediaQuery.of(context).size.height * 0.45
                  ),
                  //const Image(image: AssetImage('assets/hastane_logo.png')), ////////////////////////////////////////// HASTANE LOGO REMOVED
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.white, width: MediaQuery.of(context).size.width * 0.008), // Border color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24), // Curved corners
                        ),
                        backgroundColor: Colors.transparent, // Transparent background
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/InfoPage');
                      },
                      child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text ("Bilgilendirme", style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width * 0.06))),
                    ),
                  )
                ]
            )
        )
    );
  }
}

// W/WindowOnBackDispatcher( 6950): Set 'android:enableOnBackInvokedCallback="true"' in the application manifest.
///////////////////////////// INFO PAGE /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(backgroundColor: Colors.transparent,),// Scaffold provides basic visual structure (app bar, body etc.)
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color(0xFFFF0000),
                      Color(0xFF00008B)
                    ]
                )
            ),
            child: Column(
                children: <Widget>[
                  Container(
                      height: MediaQuery.of(context).size.height * 0.10
                  ),
                  Text ("Bilgilendirme", style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width * 0.06),textAlign: TextAlign.center),
                  Container(height: MediaQuery.of(context).size.height * 0.02),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.16,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0.0),
                          child: SingleChildScrollView (
                            child: Text("Bu uygulama, bir araştırma doğrultusunda oluşturulmuştur. Bu uygulama ile, konum veriniz ve attığınız adım sayısı alınacaktır. Verileriniz korunuyor ve anonimize ediliyordur. Eğer bu şartları onaylıyorsanız  lütfen \"Okudum, onaylıyorum\" seçeneğine basın. ",
                                textAlign: TextAlign.center, style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.048)),
                          ),
                        )
                    ),
                  ),
                  Container(height: MediaQuery.of(context).size.height * 0.05),
                  Text ("Kullanım Talimatları", style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width * 0.06),textAlign: TextAlign.center),
                  Container(height: MediaQuery.of(context).size.height * 0.05),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
                          child: SingleChildScrollView (
                            child: Text("Bir sonraki sayfada, \"Konum Almaya İzin Ver\" butonuna bastığınızda çıkan tüm izinlere izin verin lütfen. Konumun doğru şekilde alınması için, konumun alınmasına izin verirken, sadece \"uygulamayı kullanırken izin ver\" seçeneği çıkıyorsa onu seçip ayarlardan \"her zaman izin ver\" seçeneğini işaretlemeli, sonra da uygulamaya bir kez daha girip \"Konum Almaya İzin Ver\" butonuna bir daha basmalısınız. Uygulamayı lütfen arka plandan silmeyiniz, eğer silecek olursanız da uygulamayı geri açıp bir daha \"Konum Almaya İzin Ver\" butonuna basınız.",
                                textAlign: TextAlign.center, style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.048)),
                          ),
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.width * 0.1,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.white, width: MediaQuery.of(context).size.width * 0.008), // Border color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24), // Curved corners
                          ),
                          backgroundColor: Colors.transparent, // Transparent background
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/LocationPage');
                        },
                        child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text ("Okudum, onaylıyorum", style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width * 0.05))
                        ),
                      ),
                    ),
                  )
                ]
            )
        )
    );
  }
}

///////////////////////////// LOCATION PAGE /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var db = FirebaseFirestore.instance;

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {

  late String currentLoc;
  late String dev;

  String locationMessage = "Current Loc:";
  String deviceInfo = "Kullanıcı Numarası";
  String currTime = "Current Time";
  String time2 = "Time2";

  Location location = Location();
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  late LocationData _locationData;

  var device = DeviceInfoPlugin();

 // PEDO START =======================================================================================
  String steps = '?';
  late Stream<StepCount> _stepCountStream;
  void onStepCountError(error){
    steps = 'Step Count not available';
  }
  void onStepCount(StepCount event) {
    steps = event.steps.toString();
  }
  // PEDO END =======================================================================================


  Future<dynamic> getLocation() async{

    // PEDO START =======================================================================================
    bool granted = await perm.Permission.activityRecognition.isGranted;
    if (!granted) {
      perm.PermissionStatus access = await perm.Permission.activityRecognition.request();
    }
    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount).onError(onStepCountError);
    // PEDO END =======================================================================================


    // Get the location
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) _serviceEnabled = await location.requestService();

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied){
      _permissionGranted = await location.requestPermission();
    }

    location.enableBackgroundMode(enable: true);

    _locationData = await location.getLocation();

    // Now get the device info:

    if (Platform.isAndroid){
      var androidId = await PlatformDeviceId.getDeviceId;

      FirestoreService firestoreService = FirestoreService();
      String result = await firestoreService.getAttributeValue('starting_users', 'uid', androidId);
      if (result == "NA"){
        saveNewUserToDB("starting_users", androidId);
        startTime = DateTime.now().millisecondsSinceEpoch.toString();
      }
      else{
        startTime = result;
      }

      return [_locationData, androidId];
    }
    else if (Platform.isIOS){
      var iosInfo = await device.iosInfo;
      var id = iosInfo.identifierForVendor;

      FirestoreService firestoreService = FirestoreService();
      var result = await firestoreService.getAttributeValue('starting_users', 'uid', id);
      if (result == "NA"){
        saveNewUserToDB("starting_users", id);
        startTime = DateTime.now().millisecondsSinceEpoch.toString();
      }
      else{
        startTime = result;
      }


      return [_locationData, id];
    }

    return [_locationData, "A problem occurred. Platform is neither IOS or Android."];
  }


  void saveLocToDB(String dbName){

    final data = <String, dynamic>{
      "uid" : deviceInfo,
      "coordinates" : locationMessage,
      "time" : currTime,
      "steps" : steps, ////////////////////////////////////////////////////////////////////////////////////// PEDO
    };

    db.collection(dbName).add(data);

  }

  void saveCompletedToDB(String dbName) async{
    final data = <String, dynamic>{
      "uid" : deviceInfo,
      "time" : currTime
    };
    FirestoreService firestoreService = FirestoreService();
    String result = await firestoreService.getAttributeValue('completed_users', 'uid', deviceInfo);
    if (result == "NA"){
      db.collection(dbName).add(data);
    }
  }

  void saveNewUserToDB(String dbName, var devInfo) async{
    final data = <String, dynamic>{
      "uid" : devInfo,
      "time" : DateTime.now().millisecondsSinceEpoch.toString(),
    };

    FirestoreService firestoreService = FirestoreService();
    String result = await firestoreService.getAttributeValue('starting_users', 'uid', devInfo);
    if (result == "NA"){
      db.collection(dbName).add(data);
    }
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent,),// Scaffold provides basic visual structure (app bar, body etc.)
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFFFF0000),
                  Color(0xFF00008B)
                ]
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Text(currTime, textAlign: TextAlign.center, style: const TextStyle(fontSize: 17)),
            //Text(deviceInfo, textAlign: TextAlign.center, style: const TextStyle(fontSize: 17)),
            //Text(locationMessage, textAlign: TextAlign.center, style: const TextStyle(fontSize: 17)),
            const Padding(
              padding: EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 0.0),
              child: Text("Araştırmamıza katkı sağladığınız için teşekkür ederiz!", textAlign: TextAlign.center, style: TextStyle(fontSize: 30, color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 35.0, 0.0, 0.0),
              child: ElevatedButton(
                onPressed: () {
                  getLocation().then((value){

                    var curLoc = value[0];
                    currentLoc = '$curLoc';

                    var curDev = value[1];
                    dev = '$curDev';

                    setState(() {

                      deviceInfo = dev;
                      locationMessage = currentLoc;
                      currTime = DateTime.now().millisecondsSinceEpoch.toString();
                                                            // TIME INTERVAL FOR WHEN TO STOP ////////////////////////////////////
                      if (int.parse(currTime) - int.parse(startTime) < whenToStop){
                        saveLocToDB("location");
                      }
                    });
                    location.enableBackgroundMode(enable: true);
                    location.onLocationChanged.listen((newVal){
                      currentLoc = '$newVal';
                      setState(() {
                        if (locationMessage != currentLoc){
                          time2 = DateTime.now().millisecondsSinceEpoch.toString();
                          locationMessage = currentLoc; // time interval for loc fetch              // time interval for when to stop
                          if (int.parse(time2) - int.parse(currTime) > locInterval && int.parse(time2) - int.parse(startTime) < whenToStop){ /////////////////////////////////////////////////////////////////
                            currTime = time2;
                            saveLocToDB("location");
                          }                                             // time interval for when to stop
                          else if (int.parse(time2) - int.parse(startTime) >= whenToStop){
                            saveCompletedToDB("completed_users");
                          }
                        }
                      });
                    });
                  });
                },
                child: const FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text("Konum Almaya İzin Ver", style: TextStyle(fontSize: 17))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4.0, 35.0, 4.0, 0.0),
              child: Text(deviceInfo, textAlign: TextAlign.center, style: const TextStyle(fontSize: 30, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}


///////////////////////////// HEALTH INFO PAGE (NOT IN USE) /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class HealthInfoPage extends StatefulWidget {
  const HealthInfoPage({super.key});

  @override
  State<HealthInfoPage> createState() => _HealthInfoPageState();
}

class _HealthInfoPageState extends State<HealthInfoPage> {

  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();


  @override
  void dispose(){
    controller.dispose();
    controller2.dispose();
    controller3.dispose();
    super.dispose();
  }

  late String value1 = '';
  late String value2 = '';
  late String value3 = '';

  late String currTime = DateTime.now().millisecondsSinceEpoch.toString();

  late String deviceId;


  var device = DeviceInfoPlugin(); // Useless

  Future<dynamic> getDeviceInfo() async {
    if (Platform.isAndroid){
      var androidId = await PlatformDeviceId.getDeviceId;
      return androidId;
    }
    else if (Platform.isIOS){
      var iosInfo = await device.iosInfo;
      var id = iosInfo.identifierForVendor;
      return id;
    }
  }


  void saveValToDB(String dbName){
    final data = <String, dynamic>{
      "uid" : deviceId,
      "value1" : value1,
      "value2" : value2,
      "value3" : value3,
      "time" : currTime
    };

    db.collection(dbName).add(data);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(backgroundColor: Colors.transparent,),// Scaffold provides basic visual structure (app bar, body etc.)
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color(0xFFFF0000),
                      Color(0xFF00008B)
                    ]
                )
            ),
            child: Column(
                children: <Widget>[
                  Container(
                      height: MediaQuery.of(context).size.height * 0.15
                  ),
                  Text ("Sağlık Bilgilerinizi Girin", style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width * 0.06),textAlign: TextAlign.center),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.07
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text ("1. Değer", style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width * 0.06),textAlign: TextAlign.center),
                      SizedBox(
                        width: 150,
                        child: TextField(
                          controller: controller,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            focusColor: Colors.white,
                            border: OutlineInputBorder(),
                            hintText: 'Değer Girin',
                          ),
                          onChanged: (String value){
                            setState((){
                              value1 = controller.text;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.03
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text ("2. Değer", style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width * 0.06),textAlign: TextAlign.center),
                      SizedBox(
                        width: 150,
                        child: TextField(
                          controller: controller2,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            focusColor: Colors.white,
                            border: OutlineInputBorder(),
                            hintText: 'Değer Girin',
                          ),
                          onChanged: (String value){
                            setState((){
                              value2 = controller2.text;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.03
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text ("3. Değer", style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.width * 0.06),textAlign: TextAlign.center),
                      SizedBox(
                        width: 150,
                        child: TextField(
                          controller: controller3,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            focusColor: Colors.white,
                            border: OutlineInputBorder(),
                            hintText: 'Değer Girin',
                          ),
                          onChanged: (String value){
                            setState((){
                              value3 = controller3.text;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                      child: ElevatedButton(
                        onPressed: () {
                          getDeviceInfo().then((value){
                            deviceId = value;
                            currTime = DateTime.now().millisecondsSinceEpoch.toString();
                            setState(() {
                              saveValToDB("user_values");
                            });
                          });
                        },
                        child: const FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text("Değerleri Kaydet", style: TextStyle(fontSize: 17))),
                      )
                  ),

                ]
            )
        )
    );
  }
}
