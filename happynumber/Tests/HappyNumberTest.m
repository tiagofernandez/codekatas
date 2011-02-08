#import <GHUnitIOS/GHUnit.h>

#import "HappyNumber.h"

@interface HappyNumberTest : GHTestCase {
  HappyNumber *happyNumber;
}

-(void) assertHappy:(long)number;
-(void) assertNotHappy:(long)number;

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
  [self assertHappy:7];
  [self assertNotHappy:8];
}

-(void) assertHappy:(long)number {
  GHAssertTrue([happyNumber isHappy:number], nil);
}

-(void) assertNotHappy:(long)number {
  GHAssertFalse([happyNumber isHappy:number], nil);
}

@end