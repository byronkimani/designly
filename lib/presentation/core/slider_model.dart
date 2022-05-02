class SliderModel {
  String image;
  String title;
  String description;

  SliderModel({
    required this.title,
    required this.description,
    required this.image,
  });
}

// List created
List<SliderModel> onboardingSlides = <SliderModel>[
  SliderModel(
    title: 'Where Design meets code!',
    description: '',
    image: 'assets/images/logo.png',
  ),
  SliderModel(
    title: 'We live and eat code!',
    description: '',
    image: 'assets/images/designer.gif',
  ),
  SliderModel(
    title: 'Welcome aboard!',
    description: 'We are happy to embark on this journey with you',
    image: 'assets/images/welcome.gif',
  ),
];
