// Enum for screen sizes with width limits
enum ScreenSize {
  mobile(600), // Mobile screens with width less than 600
  tablet(1200), // Tablet screens with width between 600 and 1200
  desktop(1200); // Desktop screens with width more than 1200

  final double widthLimit;

  const ScreenSize(this.widthLimit);
}
