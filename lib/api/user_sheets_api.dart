import 'package:form_application/table/user.dart';
import 'package:gsheets/gsheets.dart';

class UserSheetsApi {
  static const _credentials = r'''
  {
    "type": "service_account",
    "project_id": "gsheets2-387707",
    "private_key_id": "29aaa934a4be1519e6743fb834b62b7c06de2a3c",
    "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC7rPuHY9thri1Y\nR0MVuM4R714lrBsgkB+c+tEkZVNwvX0wPARhY0q+FjZpWJqjCk04pdhoB5SVg+JX\nXNf0QxrhZP0pJRw9DcfF/U4PpeRlVYzNVtzPi/pI8QAkJDNfOntkfgcQuVv1+ysz\nU7WjvFlFuTNAw1phnn0yuFvKa17I+h2P/ZTNvWEWlc2nYDKI6gD09wZJsBejbIZB\n5CGuIWZzhRPyYE3qwneAU6lzI/dNgBpEJer0BT7y0EJ216Gh96jUr6Stjoih1WTZ\n+pdFclSBEc5d70ihb3US6VM4mFloUo5rzEG4gXz1BvWE0bbkk8k2krbKN8+gTZD3\nU4k2VEmxAgMBAAECggEAHwSKd8h1uDGw1d/FQyBNkqJEpaZJv3qCdw/vI/xJK59t\nwtyQfsYJ0tvZ91RJDnxD4gJq/1qNYJ6w+G5kVL8IgMsPmk7DWYXfCCaC0cxBsMvQ\nXxmlmfnRDmAifVasVOdWAHhh045HGCMAc1W49gxJlt/yjBgdZnfqyki1BwHy4vVH\nGpoRuFGRUjqJ9rq5nBd0e/kttpZ4ejexdu7eEg0vmhib6yy4CXkQHKXLmRIWEwOV\nsQ3mghjdEMwZcBy7OcVTDXxLnrPN0ccAzuyhBlZAmnxm8n1fTnpRkRtitSz+fAUj\n7aQXFabTbj+soJgh1a5+VjWIU7aVEgaR4K/SrscDrwKBgQDeKui4IKYlPXCX35TW\nKCuRsE8UwgUNnZoYHFy26cs6gULFliHnaFFPZyk5Td0qzXsN/hGFceYYXuw6qTOD\n80DFoR2sQ+hP1Wbx2ya4TxXjR7LabiTTzTxmeS3d2Uc5phiGGNXf9QNgwr45rEqx\n5wzdPvYCMdKWt1DnIKPu41vaBwKBgQDYQWyiSgHLMqpUD+NFbtEdutyJymiKi06g\nbTSTvV6/WYaxZSabZk1uQM2wfpOAhhQKEoq49nR9856WAjl0wL8d2AM/00BR7qWf\nXxTqP65xzCqUbl8BdZYlDiiDgSUx7vnmmjiHwDWh1mPAUXjjOHzvhPyRNU8L0wDZ\nXLC6gyUwhwKBgQDBCoW13+CdwRoBTOt1fegFqi28uq1LXGLVimdhJBpLVp+fMcl5\n2iG0nc2rFiYTmAHRca7lxccJ7AjVG8pAX/ArCMjQsxy7qZDOm/6z7Tv2hYk51LS5\nOL6/x5F8D9yckd8DPbcw5yMtQ2mokTVCCaIa6Cc4VvRFszlf6vOmkfVwpwKBgC5U\nFcnOwQOfHw5TOQUu8G3GEmkSi8LihT2pJ5JfB2VG8KwgV10DVaNBDs+4zjDCiJh/\n0Gg/pEU3Y8oPP+/bOxZRqKCLyUPENIcn/3sPmXeXnaee3YuafUgC+Hrzt9wyribQ\n8zth2huJqmURDyzedSV7AAC7wuttkMkAKnxKjDURAoGBAIQy7h1VME7JYK7VcCvj\nckj3kRYuIhtWAlhrlv9xCHLxCw5YfzUlqyoETD62gR/wVhTxorOF6XEWtHgbSXow\nvtqQS/h8EQgXgsfy+rvPYzi03fa8m4rd0c7+Lb9ISlmZRBOShowWRDxMWStZIH1l\nv4psON5QntvVM75CWxgbwyuG\n-----END PRIVATE KEY-----\n",
    "client_email": "gsheets2@gsheets2-387707.iam.gserviceaccount.com",
    "client_id": "113979478045503816220",
    "auth_uri": "https://accounts.google.com/o/oauth2/auth",
    "token_uri": "https://oauth2.googleapis.com/token",
    "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
    "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gsheets2%40gsheets2-387707.iam.gserviceaccount.com",
    "universe_domain": "googleapis.com"
  }
  ''';

  static final _spreadsheetId = '1YBpYJfTwrxfSs27JoeWmoN-v8D3I9efA0u7fI63o3fk';
  static final _gsheets = GSheets(_credentials);
  static Worksheet? _userSheet;

  static Future init() async {
    try {
      final spreadsheet = await _gsheets.spreadsheet(_spreadsheetId);
      _userSheet = await _getWorkSheet(spreadsheet, title: 'Users');

      final firstRow = UserFields.getFields();
      _userSheet!.values.insertRow(1, firstRow);
    } catch (e) {
      print("Init error: $e");
    }
  }

  static Future<Worksheet> _getWorkSheet(
      Spreadsheet spreadsheet, {
        required String title,
  }) async {
    try {
      return await spreadsheet.addWorksheet(title);
    } catch (e) {
      return spreadsheet.worksheetByTitle(title)!;
    }
  }

  static Future<int> getRowCount() async {
    if (_userSheet == null) return 0;
    final lastRow = await _userSheet!.values.lastRow();
    return lastRow == null ? 0 : int.tryParse(lastRow.first) ?? 0;
  }

  static Future insert(List<Map<String, dynamic>> rowList) async {
    if (_userSheet == null) return;
    _userSheet!.values.map.appendRows(rowList);
  }

}