import 'package:flutter/material.dart';

class UIControlsScreen extends StatelessWidget {
  const UIControlsScreen({super.key});

  static const name = 'ui_control_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI Controls"),
      ),
      body: const _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UIControlsViewState extends State<_UIControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text("Developer Mode"),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text('Vahiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              value: Transportation.car,
              title: const Text("By Car"),
              subtitle: const Text("Viajar por carro"),
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              value: Transportation.boat,
              title: const Text("By Boat"),
              subtitle: const Text("Viajar por bote"),
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              value: Transportation.plane,
              title: const Text("By Plane"),
              subtitle: const Text("Viajar por avión"),
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              value: Transportation.submarine,
              title: const Text("By Submarine"),
              subtitle: const Text("Viajar por submarino"),
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('¿Desayuno?'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),        
        CheckboxListTile(
          title: const Text('¿Almuerzo?'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),        
        CheckboxListTile(
          title: const Text('¿Cena?'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
