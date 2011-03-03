#import "ClockViewController.h"

@implementation ClockViewController

#pragma mark -
#pragma mark Memory Management

- (void)dealloc {
    [super dealloc];
}

#pragma mark -
#pragma mark View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
