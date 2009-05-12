#import <UIKit/UIKit.h>

@interface TodoViewController : UIViewController 
    <UITableViewDelegate, UITableViewDataSource> {
    
    NSArray *todos;
}

@property (nonatomic, retain) NSArray *todos;

@end
