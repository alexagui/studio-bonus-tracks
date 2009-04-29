#import <UIKit/UIKit.h>

@class Product;

@interface ProductTableCell : UITableViewCell {
    IBOutlet UILabel *nameLabel;
    IBOutlet UILabel *authorLabel;
    IBOutlet UILabel *priceLabel;
    IBOutlet UIImageView *imageView;
}

@property (nonatomic, retain) UILabel *nameLabel;
@property (nonatomic, retain) UILabel *authorLabel;
@property (nonatomic, retain) UILabel *priceLabel;
@property (nonatomic, retain) UIImageView *imageView;

- (void)configureForProduct:(Product *)product;

@end
