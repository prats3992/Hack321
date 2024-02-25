class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Matches",
    image: "assets/images/onboarding/image1.png",
    desc: "Find Your Perfect RED Flag because\nA Red Flag & A Red Flag make a \nRED Carpet to their Wedding.",
  ),
  OnboardingContents(
    title: "Algorithm",
    image: "assets/images/onboarding/image2.png",
    desc:
    "Users going through a vetting process to ensure you never match with bots or someone who won't treat you right.",
  ),
  OnboardingContents(
    title: "Premium",
    image: "assets/images/onboarding/image3.png",
    desc:
    "Sign up today and enjoy the first 72 hour of premium benefits on us.",
  ),
];
