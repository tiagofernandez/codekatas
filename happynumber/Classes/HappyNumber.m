#import "HappyNumber.h"

@interface HappyNumber()

-(NSString *) getDigits:(long)number;

-(long) powTwo:(char)character;

@end

@implementation HappyNumber

-(BOOL) isHappy:(long)number {
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
  BOOL happy = (sum == 1);
  NSLog(@"Is %d happy? %@", number, happy ? @"yes" : @"no");
  return happy;
}

-(NSString *) getDigits:(long)number {
  return [NSString stringWithFormat: @"%d", number];
}

-(long) powTwo:(char)character {
  long digit = (long) (character - '0');
  return (long) pow(digit, 2);
}

@end