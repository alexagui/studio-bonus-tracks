#import <UIKit/UIKit.h>

@interface ClockViewController : UIViewController {
    
    UILabel *timeLabel;
}

@property (nonatomic, retain) IBOutlet UILabel *timeLabel;

- (IBAction)updateTime:(id)sender;

@end
