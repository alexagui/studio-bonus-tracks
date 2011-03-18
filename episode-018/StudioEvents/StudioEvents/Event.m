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
    int count = 0;
    for (NSString *name in self.attendees) {
        NSLog(@"%@", name);
        count += 1;
    }
    if (count == 3) {
        // start the event
    }
}

- (NSString *)description {
    NSString *description = [NSString stringWithFormat:@"Attendees: %@", self.attendees];
    return description;
}

@end    
