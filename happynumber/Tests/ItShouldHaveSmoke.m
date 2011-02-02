#import <GHUnitIOS/GHUnit.h>

@interface ItShouldHaveSmoke : GHTestCase {
  NSString *someVariableToInitialize;
}
@end

@implementation ItShouldHaveSmoke

-(void)setUp {
  someVariableToInitialize = @"Hello World";
}

-(void)tearDown {
  someVariableToInitialize = nil;
}

-(void)testThatItDoesHaveItsSmoke {
  GHAssertEquals(@"Hello World", someVariableToInitialize, nil);
}

@end