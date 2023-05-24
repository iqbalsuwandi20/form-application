class UserFields {
  static final String id = 'id';
  static final String date = 'date';
  static final String barcode = 'barcode';
  static final String productName = 'productName';
  static final String division = 'division';
  static final String posNo = 'posNo';
  static final String transNo = 'transNo';
  static final String newTransNo = 'newTransNo';
  static final String contentIssue = 'contentIssue';
  static final String cancelItem = 'cancelItem';
  static final String exchange = 'exchange';
  static final String refund = 'refund';
  static final String wrongPayment = 'wrongPayment';
  static final String other = 'other';

  static List<String> getFields() => [
    id,
    date,
    barcode,
    productName,
    division,
    posNo,
    transNo,
    newTransNo,
    contentIssue,
    cancelItem,
    exchange,
    refund,
    wrongPayment,
    other,
  ];
}

class User {
  final int? id;
  final int date;
  final int barcode;
  final String productName;
  final String division;
  final int posNo;
  final int transNo;
  final int newTransNo;
  final String contentIssue;
  final bool cancelItem;
  final bool exchange;
  final bool refund;
  final bool wrongPayment;
  final String other;

  const User({
    this.id,
    required this.date,
    required this.barcode,
    required this.productName,
    required this.division,
    required this.posNo,
    required this.transNo,
    required this.newTransNo,
    required this.contentIssue,
    required this.cancelItem,
    required this.exchange,
    required this.refund,
    required this.wrongPayment,
    required this.other,
  });

  Map<String, dynamic> toJson() => {
    UserFields.id: id,
    UserFields.date: date,
    UserFields.barcode: barcode,
    UserFields.productName: division,
    UserFields.posNo: posNo,
    UserFields.transNo: transNo,
    UserFields.newTransNo: newTransNo,
    UserFields.contentIssue: contentIssue,
    UserFields.cancelItem: cancelItem,
    UserFields.exchange: exchange,
    UserFields.refund: refund,
    UserFields.wrongPayment: wrongPayment,
    UserFields.other: other,
  };
}