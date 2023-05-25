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
  final String date;
  final String barcode;
  final String productName;
  final String division;
  final String posNo;
  final String transNo;
  final String newTransNo;
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

  User copy
  ({
    int? id,
    String? date,
    String? barcode,
    String? productName,
    String? division,
    String? posNo,
    String? transNo,
    String? newTransNo,
    String? contentIssue,
    bool? cancelItem,
    bool? exchange,
    bool? refund,
    bool? wrongPayment,
    String? other,
  }) =>
      User(
        id: id ?? this.id,
        date: date ?? this.date,
        barcode: barcode ?? this.barcode,
        productName: productName ?? this.productName,
        division: division ?? this.division,
        posNo: posNo ?? this.posNo,
        transNo: transNo ?? this.transNo,
        newTransNo: newTransNo ?? this.newTransNo,
        contentIssue: contentIssue ?? this.contentIssue,
        cancelItem: cancelItem ?? this.cancelItem,
        exchange: exchange ?? this.exchange,
        refund: refund ?? this.refund,
        wrongPayment: wrongPayment ?? this.wrongPayment,
        other: other ?? this.other,
      );

  Map<String, dynamic> toJson() => {
    UserFields.id: id,
    UserFields.date: date,
    UserFields.barcode: barcode,
    UserFields.productName: productName,
    UserFields.division: division,
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