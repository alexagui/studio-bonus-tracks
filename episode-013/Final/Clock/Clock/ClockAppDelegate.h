#import <UIKit/UIKit.h>

@class ClockViewController;

@interface ClockAppDelegate : NSObject <UIApplicationDelegate> {
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ClockViewController *viewController;

@end
