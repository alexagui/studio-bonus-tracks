#import "StoreAppDelegate.h"
#import "ProductsViewController.h"

@implementation StoreAppDelegate

@synthesize window;
@synthesize navigationController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {	
    [window addSubview:[navigationController view]];
    [window makeKeyAndVisible];
}

- (void)dealloc {
    [navigationController release];
    [window release];
    [super dealloc];
}

@end
