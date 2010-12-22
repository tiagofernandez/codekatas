#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

int main() {
  
  NSAutoreleasePool *pool = [NSAutoreleasePool new];
  
  [NSApplication sharedApplication];
  
  NSRunAlertPanel (@"Test", @"Hello, World!", nil, nil, nil);
  
  return 0;
}