#import "DummyTest.h"

@implementation DummyTest

- (void) setUp {
  NSLog(@"setUp() called");
}

- (void) tearDown {
  NSLog(@"tearDown() called");
}

- (void) testDummy {
  STAssertTrue(YES, @"Dummy assertion failed");
}

@end