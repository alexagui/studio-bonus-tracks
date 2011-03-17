#import <Foundation/Foundation.h>

@interface Event : NSObject {
}

@property (nonatomic, retain) NSArray *attendees;

- (void)rollCall;

@end