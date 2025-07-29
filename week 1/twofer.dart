String twoFer(name) {
  if (name.isEmpty) {
    return ("One for you, one for me");
  } else {
    return ("One for $name, one for me");
  }
}

void main() {
  print(twoFer("Ama"));
  print(twoFer("Brandon"));
  print(twoFer(""));
  print(twoFer("Victoria"));
}
