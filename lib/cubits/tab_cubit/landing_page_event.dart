abstract class LandingPageEvent{}
class Tanchange extends LandingPageEvent{
  final int tabIndex;
  Tanchange({required this.tabIndex});
}