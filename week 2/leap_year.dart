
// ! a condition that checkes if a given year is a leap year
// ! a leap year is:
bool isALeapYear(int year) {
  // ! is not divisble by 4
  if (year % 4 != 0) {
    return false;
  // ! but divisble 4 but not 100  
  } else if (year % 100 != 0) {
    return true;
  //! divisible by both 100 and 400
  } else if (year % 400 == 0) {
    return true;
  } else {
    return false;
  }
}

void main() {
  List<int> years = [1900, 2000, 2032, 2028, 1506, 2028, 2024];
  for (int year in years) {
    print(
      isALeapYear(year) ? "$year is a leap year" : "$year is not a leap year",
    );
  }
}
