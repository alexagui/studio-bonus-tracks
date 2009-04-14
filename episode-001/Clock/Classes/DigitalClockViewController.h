#import <UIKit/UIKit.h>

@interface DigitalClockViewController : UIViewController {
    IBOutlet UILabel *timeLabel;
}

@property (nonatomic, retain) UILabel *timeLabel;

- (IBAction)updateTime:(id)sender;

@end