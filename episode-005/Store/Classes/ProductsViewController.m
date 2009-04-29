#import "ProductsViewController.h"
#import "StoreAppDelegate.h"
#import "Product.h"
#import "ProductTableCell.h"

@implementation ProductsViewController

@synthesize products, productCell;

- (void)viewDidLoad {
    self.title = @"Products";
    
    Product *cocoa = [[Product alloc] 
                      initWithName:@"Cocoa Programming" 
                           author:@"Daniel Steinberg" 
                        imageName:@"cocoa.png"
                            price:[NSDecimalNumber decimalNumberWithString:@"22.00"]];
    
    Product *objc = [[Product alloc] 
                     initWithName:@"Coding in Objective-C 2.0" 
                           author:@"Bill Dudney" 
                        imageName:@"objc.png"
                            price:[NSDecimalNumber decimalNumberWithString:@"15.00"]];
    
    Product *iphone = [[Product alloc] 
                       initWithName:@"iPhone SDK Development" 
                             author:@"Bill Dudney, Chris Adamson, Marcel Molina" 
                          imageName:@"iphone.png"
                              price:[NSDecimalNumber decimalNumberWithString:@"24.00"]];
    
    Product *xcode = [[Product alloc] 
                      initWithName:@"Becoming Productive in Xcode" 
                            author:@"Mike Clark" 
                         imageName:@"xcode.png"
                             price:[NSDecimalNumber decimalNumberWithString:@"10.00"]];
    
    NSArray *exampleData = 
        [[NSArray alloc] initWithObjects:cocoa, objc, iphone, xcode, nil];
    self.products = exampleData;
    [cocoa release];
    [objc release];
    [iphone release];
    [xcode release];
    [exampleData release];
    
    [super viewDidLoad];
}

#pragma mark -
#pragma mark Memory methods

- (void)dealloc {
    [products release];
    [productCell release];
    [super dealloc];
}

#pragma mark -
#pragma mark Table View methods

- (NSInteger)tableView:(UITableView *)tableView 
 numberOfRowsInSection:(NSInteger)section {
    return [self.products count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView 
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"ProductCellId";
    
    ProductTableCell *cell = 
        (ProductTableCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        [[NSBundle mainBundle] loadNibNamed:@"ProductTableCell" owner:self options:nil];
        cell = self.productCell;
    }    
    
    Product *product = [products objectAtIndex:indexPath.row];
    [cell configureForProduct:product];
    
    return cell;
}

- (NSIndexPath *)tableView:(UITableView *)tableView 
  willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	return nil;
}

- (CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 86;
}

@end