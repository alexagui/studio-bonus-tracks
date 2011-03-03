#import "ClockViewController.h"

@implementation ClockViewController
@synthesize timeLabel;

#pragma mark -
#pragma mark Memory Management

- (void)dealloc {
    [timeLabel release];
    [super dealloc];
}

- (IBAction)updateTime:(id)sender {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterNoStyle];
    [formatter setTimeStyle:NSDateFormatterLongStyle];
    
    NSDate *now = [NSDate date];
    
    self.timeLabel.text = [formatter stringFromDate:now];
    
    [formatter release];
}

#pragma mark -
#pragma mark View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)viewDidUnload {
    [self setTimeLabel:nil];
    [super viewDidUnload];
}

@end
