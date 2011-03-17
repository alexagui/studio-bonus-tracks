#import "Event.h"

@implementation Event

@synthesize attendees;

- (id)init {
    self = [super init];
    if (self) {
        self.attendees = [NSArray arrayWithObjects:@"Larry", @"Mo", @"Curly", nil];
    }
    return self;
}

- (void)dealloc {
    [attendees release];
    [super dealloc];
}

- (void)rollCall {
    for (NSString *name in self.attendees) {
        NSLog(@"%@", name);
    }
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Attendees: %@", self.attendees];
}

@end    
