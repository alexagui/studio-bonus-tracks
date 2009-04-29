#import <UIKit/UIKit.h>

@class StudioViewController;

@interface StudioAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    StudioViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet StudioViewController *viewController;

@end
