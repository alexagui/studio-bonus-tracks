#import "PhotosViewController.h"

@implementation PhotosViewController

@synthesize imageView;

- (IBAction)pickPhoto {
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]) {
		UIImagePickerController *imagePicker = 
            [[UIImagePickerController alloc] init];
		imagePicker.delegate = self;
		imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
		[self presentModalViewController:imagePicker animated:YES];
		[imagePicker release];
	} else {
		UIAlertView *alert = [[UIAlertView alloc] 
                              initWithTitle:@"Whoops!" 
                                    message:@"Photo library not supported." 
                                   delegate:nil 
                          cancelButtonTitle:@"OK" 
                          otherButtonTitles:nil];
		[alert show];
		[alert release];
	}
}

- (void)imagePickerController:(UIImagePickerController *)picker        
        didFinishPickingImage:(UIImage *)image 
                  editingInfo:(NSDictionary *)editingInfo {
	self.imageView.image = image;
	[picker dismissModalViewControllerAnimated:YES];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
	[picker dismissModalViewControllerAnimated:YES];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; 
}

- (void)dealloc {
    [imageView release];
    [super dealloc];
}

@end
