#import <UIKit/UIKit.h>

@class DigitalClockViewController;

@interface ClockAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    DigitalClockViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet DigitalClockViewController *viewController;

@end
