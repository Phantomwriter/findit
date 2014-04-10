//
//  cameraViewController.h
//  tabbedFindIt
//
//  Created by Howard Livingston on 4/8/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

//This is the CAMERA SCREEN VC

#import <UIKit/UIKit.h>

@interface cameraViewController : UIViewController




@property (strong, nonatomic) IBOutlet UIImageView *cameraMainView;

- (IBAction)cameraSwipe:(UIGestureRecognizer*)sender;



@end
