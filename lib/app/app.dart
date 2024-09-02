import 'package:flutter/material.dart';
import 'package:google_map/features/map/view/map_view.dart';
import 'package:provider/provider.dart';

import '../features/map/view_model/location_view_model.dart';

class GoogleMap extends StatelessWidget {
  const GoogleMap({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LocationViewModel(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Google Map",
        home: MapView(),
      ),
    );
  }
}
