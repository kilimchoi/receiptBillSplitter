//
//  APPViewController.h
//  receiptBillSplit
//
//  Created by Kilim Choi on 5/4/14.
//  Copyright (c) 2014 Kilim Choi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface APPViewController : UIViewController <UIImagePickerControllerDelegate,
UINavigationControllerDelegate> {
    UIImagePickerController *picker;
    UIImagePickerController *picker2;
    UIImage *image;
    IBOutlet UIImageView *imageView;
}

- (IBAction)TakePhoto;
- (IBAction)ChooseExisting;
@end
