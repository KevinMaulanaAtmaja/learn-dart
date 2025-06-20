sealed class TransactionStatus {
  final String transactionId;

  TransactionStatus({required this.transactionId});
}

class Pending extends TransactionStatus {
  Pending({required super.transactionId});
}

class Success extends TransactionStatus {
  Success({required super.transactionId});
}

class Canceled extends TransactionStatus {
  final String reason;

  Canceled({required super.transactionId, required this.reason});
}
