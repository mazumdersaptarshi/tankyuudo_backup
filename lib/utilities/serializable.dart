/// Interface for classes to implement and be "is" test-able and "as" cast-able
abstract class Serializable {
  Map<String,dynamic> toJson();
}