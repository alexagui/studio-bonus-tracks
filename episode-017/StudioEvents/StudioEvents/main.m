#import <Foundation/Foundation.h>

#import "Event.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    Event *event = [[Event alloc] init];
    [event rollCall];
    NSLog(@"%@", event);
    
    [pool drain];
    return 0;
}

