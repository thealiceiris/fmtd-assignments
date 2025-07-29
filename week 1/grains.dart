BigInt square(final int n) {
  // ! checking to see if n is within range
  if (n < 1 || n > 64) {
    throw ArgumentError('n must be between 1 and 64');
  }

  return BigInt.from(2).pow(n - 1);
  //! number of grains per square using the BigInt.from(2).pow(n - 1);
  // ! 1st square = 1 grain, 2nd square = 2 grains, 3rd square = 4 grains etc..
}

// ! calculating the number of grains on the chessboard
BigInt total() {
  
  BigInt totalGrainsOnChessBoard = BigInt.zero;

  for (int i = 1; i <= 64; i++) {
    totalGrainsOnChessBoard += square(i);
  }
  return totalGrainsOnChessBoard;
}

void main() {
  print('Grains on square no. 60: ${square(60)}');
  print('Total grains on chessboard: ${total()}');
}
