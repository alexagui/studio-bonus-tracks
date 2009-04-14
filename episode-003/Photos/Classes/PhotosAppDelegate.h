#import <UIKit/UIKit.h>

@class PhotosViewController;

@interface PhotosAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PhotosViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PhotosViewController *viewController;

@end

