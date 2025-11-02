import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class GPSScreen extends StatefulWidget {
  const GPSScreen({super.key});

  @override
  State<GPSScreen> createState() => _GPSScreenState();
}

class _GPSScreenState extends State<GPSScreen> {
  String _locationMessage = "Presiona el botón para obtener ubicación";

  Future<void> _getCurrentLocation() async {
    try {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          setState(() {
            _locationMessage = "Permiso denegado";
          });
          return;
        }
      }

      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        setState(() {
          _locationMessage = "Activa el GPS para continuar";
        });
        return;
      }

      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      setState(() {
        _locationMessage =
            "Latitud: ${position.latitude}, Longitud: ${position.longitude}";
      });
    } catch (e) {
      setState(() {
        _locationMessage = "Error al obtener ubicación: $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GPS"),
        backgroundColor: const Color(0xFF3333FF),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                _locationMessage,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18),
              ),
            ),
            ElevatedButton(
              onPressed: _getCurrentLocation,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3333FF),
                foregroundColor: Colors.white, 
              ),
              child: const Text("Obtener ubicación"),
            ),
          ],
        ),
      ),
    );
  }
}
