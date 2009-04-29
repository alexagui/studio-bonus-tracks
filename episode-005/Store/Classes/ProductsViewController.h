#import <UIKit/UIKit.h>

@class ProductTableCell;

@interface ProductsViewController : UITableViewController {
    NSArray *products;
    IBOutlet ProductTableCell *productCell;
}

@property (nonatomic, retain) NSArray *products;
@property (nonatomic, retain) ProductTableCell *productCell;

@end
