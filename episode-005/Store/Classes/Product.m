#import "Product.h"

@implementation Product

@synthesize name, author, imageName, price;

- (id)initWithName:(NSString *)aName
            author:(NSString *)anAuthor
         imageName:(NSString *)anImageName
             price:(NSDecimalNumber *)aPrice {
    if (self = [super init]) {
        [self setName:aName];
        [self setAuthor:anAuthor];
        [self setImageName:anImageName];
        [self setPrice:aPrice];
    }
    
    return self;
}

- (void)dealloc {
    [name release];
    [author release];
    [imageName release];
    [price release];
    [super dealloc];
}

@end
