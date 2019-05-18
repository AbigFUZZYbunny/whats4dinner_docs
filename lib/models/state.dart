import 'user.dart';
import 'subscription_record.dart';

class StateModel{
  static bool isLoading = false;
  static FirebaseUser user;
  static User userInfo;
  static List<SubscriptionRecord> subList = new List<SubscriptionRecord>();
}