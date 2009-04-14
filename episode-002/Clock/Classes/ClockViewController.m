#import "ClockViewController.h"

@implementation ClockViewController

@synthesize label;

- (IBAction)updateTime:(id)sender {  
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterNoStyle];
    [formatter setTimeStyle:NSDateFormatterLongStyle];
    
    NSDate *now = [NSDate date];
    
    label.text = [formatter stringFromDate:now];
    
    [formatter release];
}

- (void)viewDidLoad {
    NSLog(@"The label is %@", self.label);
    [super viewDidLoad];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
    [label release];
    [super dealloc];
}

@end
