import 'dart:io';
import 'dart:math';
// import 'dart:js_util';

void main() {

  var interest = InterestCal();

  print("Enter principal balance: ");
  interest.principalBal = double.parse(stdin.readLineSync()!);

  print("Enter interst rate: ");
  interest.interestRate = double.parse(stdin.readLineSync()!);

  print("Enter time in years: ");
  interest.time = double.parse(stdin.readLineSync()!);

  print("Enter number of times interest applied per time period: ");
  interest.n = double.parse(stdin.readLineSync()!);

  interest.simpleInterest();

  interest.CompoundInterest();

 
}

class InterestCal {
  double? finalAmount;

  double? principalBal;

  double? interestRate;

  double? time;

  double? n;

  double simpleInterest() {
    finalAmount = principalBal! * 1 + interestRate! * time!;

    print("The simple interest is: $finalAmount.");
    return finalAmount!;
  }

  double CompoundInterest() {
    double AnnualRate = interestRate! / 100;

    finalAmount = (principalBal! * (1 + AnnualRate / n!) * pow(n!, time!));

    print("The compound interest is: $finalAmount.");
    return finalAmount!;
  }
}
