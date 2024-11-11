// Widget de Oferta (Desconto)
Widget offerBanner() {
  return Container(
    color: Colors.red,
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
    child: Text(
      'Oferta Especial! 20% OFF',
      style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
    ),
  );
}
