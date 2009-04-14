#import <UIKit/UIKit.h>

@interface ClockViewController : UIViewController {
    IBOutlet UILabel *label;
}

@property (nonatomic, retain) UILabel *label;

- (IBAction)updateTime:(id)sender;

@end