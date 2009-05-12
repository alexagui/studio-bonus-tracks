#import <UIKit/UIKit.h>

@class TodoViewController;

@interface TodoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TodoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TodoViewController *viewController;

@end
