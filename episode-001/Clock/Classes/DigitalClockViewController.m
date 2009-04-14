#import "DigitalClockViewController.h"

@implementation DigitalClockViewController

@synthesize timeLabel;

- (IBAction)updateTime:(id)sender {  
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterNoStyle];
    [formatter setTimeStyle:NSDateFormatterLongStyle];
    
    NSDate *now = [NSDate date];
    
    timeLabel.text = [formatter stringFromDate:now];
    
    [formatter release];
}

- (void)viewDidLoad {
    NSLog(@"The label is %@", self.timeLabel);
    [super viewDidLoad];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
    [timeLabel release];
    [super dealloc];
}

@end
