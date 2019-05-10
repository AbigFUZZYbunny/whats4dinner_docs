class Convert{

  static double dynamicToDouble(dynamic _in){
    if(_in is int)
      return _in.toDouble();
    return _in;
  }
  static double twoDecimalDouble(int _in){
    return _in * 0.01;
  }
  static double oneDecimalDouble(int _in){
    return _in * 0.1;
  }
  static double fourDecimalDouble(int _in){
    return _in * 0.0001;
  }
  static int oneDecimalToInt(double _in){
    return (_in * 10).toInt();
  }
  static int twoDecimalToInt(double _in){
    return (_in * 100).toInt();
  }
  static int fourDecimalToInt(double _in){
    return (_in * 10000).toInt();
  }}