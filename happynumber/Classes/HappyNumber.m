#import "HappyNumber.h"

@implementation HappyNumber

-(Boolean) isHappy: (long) number {
  NSString *digits = [self getDigits:number];
  long sum;
  do {
    sum = 0;
    for (int i = 0; i < [digits length]; i++) {
      char character = [digits characterAtIndex:i];
      sum = sum + [self powTwo:character];
    }
    digits = [self getDigits:sum];
  }
  while (sum >= 10);
  Boolean happy = (sum == 1);
  NSLog(@"Is %d happy? %@", number, happy ? @"yes" : @"no");
  return happy;
}

-(NSString *) getDigits: (long) number  {
  return [NSString stringWithFormat: @"%d", number];
}

-(long) powTwo: (char) character {
  long digit = (long) (character - '0');
  return (long) pow(digit, 2);
}

@end