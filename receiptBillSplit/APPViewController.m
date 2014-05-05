//
//  APPViewController.m
//  receiptBillSplit
//
//  Created by Kilim Choi on 5/4/14.
//  Copyright (c) 2014 Kilim Choi. All rights reserved.
//

#import "APPViewController.h"

@interface APPViewController ()

@end

@implementation APPViewController

- (IBAction)TakePhoto {
    picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    [picker setSourceType: UIImagePickerControllerSourceTypeCamera];
    [self presentViewController: picker animated: YES completion: NULL];
    [picker release];
}

- (IBAction) ChooseExisting {
    picker2 = [[UIImagePickerController alloc] init];
    picker2.delegate = self;
    [picker2 setSourceType: UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController: picker2 animated: YES completion: NULL];
    [picker2 release];
}

- (void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [imageView setImage:image];
    [self dismissViewControllerAnimated: YES completion: NULL];
}

- (void) imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissViewControllerAnimated: YES completion: NULL];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
