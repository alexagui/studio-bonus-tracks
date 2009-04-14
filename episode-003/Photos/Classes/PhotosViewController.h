#import <UIKit/UIKit.h>

@interface PhotosViewController : UIViewController 
    <UIImagePickerControllerDelegate, UINavigationControllerDelegate> {

    IBOutlet UIImageView *imageView;
}

@property (nonatomic, retain) UIImageView *imageView;

- (IBAction)pickPhoto;

@end

