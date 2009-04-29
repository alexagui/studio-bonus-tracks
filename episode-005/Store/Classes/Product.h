#import <Foundation/Foundation.h>

@interface Product : NSObject {
    NSString *name;
    NSString *author;
    NSString *imageName;
    NSDecimalNumber *price;
}

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *author;
@property (nonatomic, retain) NSString *imageName;
@property (nonatomic, retain) NSDecimalNumber *price;

- (id)initWithName:(NSString *)aName
            author:(NSString *)anAuthor
         imageName:(NSString *)anImageName
             price:(NSDecimalNumber *)aPrice;

@end
