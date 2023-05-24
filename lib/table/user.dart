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