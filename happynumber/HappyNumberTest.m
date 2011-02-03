#import <GHUnitIOS/GHUnit.h>

#import "HappyNumber.h"

@interface HappyNumberTest : GHTestCase {
  HappyNumber *happyNumber;
}
@end

@implementation HappyNumberTest

-(void) setUp {
  happyNumber = [[HappyNumber alloc] init];
}

-(void) tearDown {
  [happyNumber release];
  happyNumber = nil;
}

-(void) testIsHappy {
  GHAssertTrue([happyNumber isHappy: 1], nil);
}

@end