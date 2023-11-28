import 'package:flutter/material.dart';

class MenuItem {
  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });

  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: "Counter Riverpod",
    subTitle: "Contador usando riverpod",
    link: "/counter",
    icon: Icons.add_to_queue_rounded,
  ),
  MenuItem(
    title: "Botones",
    subTitle: "Varios botones en flutter",
    link: "/buttons",
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: "Tarjetas",
    subTitle: "Un contenedor estilizado",
    link: "/cards",
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: "Progress Indicators",
    subTitle: "Generales y controlados",
    link: "/progress",
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: "Snackbars and dialogs",
    subTitle: "Indicadores en pantalla",
    link: "/snackbars",
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: "Animated Container",
    subTitle: "Widget animado",
    link: "/animated",
    icon: Icons.check_box_outline_blank_rounded,
  ),
  MenuItem(
    title: "UI Controls more Tiles",
    subTitle: "Una serie de controles de Flutter",
    link: "/ui-controls",
    icon: Icons.car_rental_outlined,
  ),
  MenuItem(
    title: "Introduccion a la App",
    subTitle: "Pequeño tutorial introductorio",
    link: "/tutorial",
    icon: Icons.accessibility_rounded,
  ),
  MenuItem(
    title: "Infinite Scroll and Pull",
    subTitle: "Listas infinitas y actualización automatica",
    link: "/infinite",
    icon: Icons.list_alt_rounded,
  ),
];
