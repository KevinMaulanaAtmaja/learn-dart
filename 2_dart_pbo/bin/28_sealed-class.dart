import 'package:dart_pbo/transaction_services.dart';
import 'package:dart_pbo/transaction_status.dart';

void mainSealed() {
  print("======SEALED-CLASS======");
  // tdk bisa dijdikan obj
  // trunan harus deklarasi di file yg sama/lib yg sama
  var status = TransactionServices().getTransactionStatus('ID0001');

  switch (status) {
    case Success():
      print('Transaction successful');
    case Pending():
      print('Transaction pending');
    case Canceled():
      print('Transaction cancelled: ${status.reason}');
  }
}
