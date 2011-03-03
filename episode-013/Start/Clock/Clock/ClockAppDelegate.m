#import "ClockAppDelegate.h"

#import "ClockViewController.h"

@implementation ClockAppDelegate

@synthesize window, viewController;

- (BOOL)application:(UIApplication *)application 
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)dealloc {
    [window release];
    [viewController release];
    [super dealloc];
}

@end
