#import "ProductTableCell.h"
#import "Product.h"

@implementation ProductTableCell

@synthesize nameLabel, authorLabel, priceLabel, imageView;

- (void)configureForProduct:(Product *)product {
    self.nameLabel.text = [product name];
    self.authorLabel.text = [product author];
    NSNumberFormatter *priceFormatter = [[NSNumberFormatter alloc] init];
    [priceFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    self.priceLabel.text = [priceFormatter stringFromNumber:[product price]];
    [priceFormatter release];
    
    self.imageView.image = [UIImage imageNamed:[product imageName]];
}

- (void)dealloc {
    [nameLabel release];
    [authorLabel release];
    [priceLabel release];
    [imageView release];
    [super dealloc];
}

@end
